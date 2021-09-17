import java.util.ArrayList;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

class HistLabelsModel {

	private String workingDir = "";
	private int minRow, maxRow, minCol, maxCol;

	private int currTileIndex = 0;
	int currRow;
	int currCol;
	int rowWidth, colWidth;

	private ArrayList<String> labels = new ArrayList<String>();
	private ArrayList<Tile> tiles = new ArrayList<Tile>();
	private Tile[][] tileGrid;

	private File saveFile;

	public String getWorkingDir() {
		return workingDir;
	}

	int getCurrTileIndex() {
		return currTileIndex;
	}

	boolean initializeDir(String dir) {

		tiles.clear();
		labels.clear();
		minRow = Integer.MAX_VALUE;
		minCol = Integer.MAX_VALUE;
		maxRow = 0;
		maxCol = 0;

		// String labelfile = dir + "labels.txt";
		// read in labels in dir, if it exists . Error otherwise

		try (BufferedReader br = new BufferedReader(new FileReader(new File(dir, "labels.txt")))) {
			workingDir = dir;
			String line;
			while ((line = br.readLine()) != null) {
				// add to labels
				labels.add(line);
			}
		} catch (IOException e) {
			System.out.println("File labels.txt cannot be found in selected directory");

			return false;
		}

		// read in list of files in dir
		// create tiles for each of them,
		Path path = Paths.get(workingDir);
		try (DirectoryStream<Path> stream = Files.newDirectoryStream(path, "*.{png,jpg,jpeg}")) {
			for (Path file : stream) {
				String fname = file.getFileName().toString();

				if (!fname.equals("blank.png")) {
					int[] rc = getRowCol(fname);
					Tile tile = new Tile(fname);
					tile.setRowCol(rc[0], rc[1]);
					System.out.println(fname + " " + tile.getRowCol()[0] + " " + tile.getRowCol()[1]);
					tiles.add(tile);
					if (rc[0] < minRow)
						minRow = rc[0];
					else if (rc[0] > maxRow)
						maxRow = rc[0];

					if (rc[1] < minCol)
						minCol = rc[1];
					else if (rc[1] > maxCol)
						maxCol = rc[1];
				}
			}
			System.out.println("Min:" + minRow + " " + minCol + " Max:" + maxRow + " " + maxCol);
			rowWidth = maxRow - minRow + 1;
			colWidth = maxCol - minCol + 1;
			tileGrid = new Tile[rowWidth][colWidth];
			for (Tile tile : tiles) {
				int[] rc = tile.getRowCol();
				System.out.println(rc[0] + " " + rc[1]);
				tileGrid[rc[0] - minRow][rc[1] - minCol] = tile;
			}

		} catch (IOException x) {
			System.out.println("Directory cannot be opened");
			x.printStackTrace();
		}
		// read in output file if it exists, update tile info if found
		// TODO

		saveFile = null;
		// set currImage
		currTileIndex = 0;
		currRow = 0;
		currCol = 0;

		return true;
	}

	File getSaveFile() {
		return saveFile;
	}

	private static int[] getRowCol(String fname) {
		int[] rc = new int[2];
		String[] parts = fname.split("-");
		rc[0] = Integer.parseInt(parts[2].substring(1));
		rc[1] = Integer.parseInt(parts[3].substring(1));

		return rc;
	}

	Tile getStartTile() {
		Tile tile = tiles.get(0);
		if (tile != null) {
			int[] pos = tile.getRowCol();
			currRow = pos[0] - minRow;
			currCol = pos[1] - minCol;
		}
		return tile;
	}

	Tile currTile() {
		if (tileGrid == null)
			return null;
		else
			return tileGrid[currRow][currCol];
	}

	Tile nextTile() {
		if (tileGrid != null) {
			int col = currCol + 1;
			int row = currRow;
			while (row < rowWidth) {
				while ((col < colWidth) && (tileGrid[row][col] == null)) {
					col++;
				}
				if (col < colWidth) {
					currCol = col;
					currRow = row;
					return tileGrid[currRow][currCol];
				} else {
					row++;
					col = 0;
				}
			}
		}
		return null;
	}

	Tile prevTile() {
		if (tileGrid != null) {
			int col = currCol - 1;
			int row = currRow;
			while (row >= 0) {
				while ((col >= 0) && (tileGrid[row][col] == null)) {
					col--;
				}
				if (col >= 0) {
					currCol = col;
					currRow = row;
					return tileGrid[currRow][currCol];
				} else {
					row--;
					col = colWidth - 1;
				}
			}
		}
		return null;
	}

	Tile rightTile() {
		if ((tileGrid == null) || (currCol == (colWidth - 1)))
			return null;
		else {
			currCol++;
			return tileGrid[currRow][currCol];
		}
	}

	Tile leftTile() {
		if ((tileGrid == null) || (currCol == 0))
			return null;
		else {
			currCol--;
			return tileGrid[currRow][currCol];
		}
	}

	Tile upTile() {
		if ((tileGrid == null) || (currRow == 0))
			return null;
		else {
			currRow--;
			return tileGrid[currRow][currCol];
		}
	}

	Tile downTile() {
		if ((tileGrid == null) || (currRow == (rowWidth - 1)))
			return null;
		else {
			currRow++;
			return tileGrid[currRow][currCol];
		}
	}

	ArrayList<String> getLabels() {
		return labels;
	}

	void saveLabels(File sfile) {

		System.out.println("Saving to : " + sfile.getName());
		// write out tile info to sfile

		try (BufferedWriter writer = new BufferedWriter(new FileWriter(sfile, false))) {
			saveFile = sfile;

			PrintWriter out = new PrintWriter(writer);
			// write out the labels as the first row
			out.print("Filename");
			for (String label : labels) {
				out.print("," + label);
			}
			out.println("");
			for (Tile tile : tiles) {
				int[] labels = tile.getLabels();
				if (labels != null) {
					String str = tile.getName();
					for (int i = 0; i < labels.length; i++) {
						str = str + "," + labels[i];
					}
					out.println(str);
				}
			}
			out.close();
		} catch (IOException e) {
			System.out.println("Cannot save labels");
			e.printStackTrace();

		}
	}

	// returns a gridSize x gridSize grid of tiles centered at input tile
	Tile[][] getTileGrid(Tile tile, int gridSize) {
		Tile[][] grid = new Tile[gridSize][gridSize];
		int[] tilePos = tile.getRowCol();
		int offset = gridSize / 2;
		// System.out.println(tilePos[0]+ "-" + tilePos[1]);
		for (int i = 0; i < gridSize; i++) {
			int x = tilePos[0] - minRow - offset + i;
			for (int j = 0; j < gridSize; j++) {
				int y = tilePos[1] - minCol - offset + j;
				if ((x >= 0) && (x < rowWidth - 1) && (y >= 0) && (y < colWidth - 1)) {
					grid[i][j] = tileGrid[x][y];
				}
			}
		}

		return grid;
	}
}
