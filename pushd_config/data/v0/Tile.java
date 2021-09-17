import java.util.Arrays;

class Tile {

	private String name;
	private int [] rowCol = new int[2];
	private int[] labels;
	
	String getName() {
		return name;
	}
	void setName(String n) {
		this.name = n;
	}
	
	int[] getLabels() {
		return labels;
	}
	void setLabels(int[] ls) {
		if(ls != null)
			labels = Arrays.copyOf(ls, ls.length);
		else 
			labels = null;
	}
	void setRowCol(int r, int c) {
		rowCol[0] = r;
		rowCol[1] = c;
	}
	
	int[] getRowCol() {
		return rowCol;
	}
	
	Tile(String name) {
		this(name, null);
	}
	
	public Tile(String name, int[] labels) {
		setName(name);
		setLabels(labels);
	}
	
	
	
	
	
}
