import java.awt.Color;
import java.awt.Dimension;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.imageio.ImageIO;
import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.ButtonGroup;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.border.Border;
import javax.swing.filechooser.FileNameExtensionFilter;

@SuppressWarnings("serial")
public class HistLabelsView extends JPanel {

	private HistLabelsModel hmodel;
	private JLabel label1, label2, label3;
	private ArrayList<JCheckBox> boxes;
	private JPanel checkPanel;
	private int zoomLevel = 1;
	BufferedImage blankImg;
	private JLabel[][] imgLabels = new JLabel[7][7];
	private JLabel sfileLabel;

	public HistLabelsView(HistLabelsModel model) {

		hmodel = model;
		setPreferredSize(new Dimension(1400, 800));
		setLayout(new BoxLayout(this, BoxLayout.PAGE_AXIS));

		Border bborder = BorderFactory.createLineBorder(Color.red);

		// Directory operations
		JPanel dirPanel = new JPanel();
		add(dirPanel);
		label1 = new JLabel("Data Directory: ");
		label2 = new JLabel(hmodel.getWorkingDir());

		dirPanel.add(label1);
		dirPanel.add(label2);

		JButton dirButton = new JButton("Choose Directory");
		dirButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String selectedDir = chooseDir();
				if (selectedDir != null) {
					boolean retVal = hmodel.initializeDir(selectedDir);

					if (retVal == false) {
						JOptionPane.showMessageDialog(null, "File labels.txt cannot be found in selected directory");
						return;
					}
					label2.setText(hmodel.getWorkingDir());
					zoomLevel = 1;
					if (hmodel.getStartTile() != null)
						displayTile(hmodel.getStartTile());
					setupCheckBoxes();
					try {
						blankImg = ImageIO.read(new File(hmodel.getWorkingDir().toString(), "blank.png"));
					} catch (IOException ex) {
						System.out.println("Blank image not found");
						ex.printStackTrace();
					}
				}
			}
		});
		dirPanel.add(dirButton);

		JPanel mainPanel = new JPanel();
		mainPanel.setBorder(bborder);

		add(mainPanel);
		// Image Display Area
		JPanel imagePanel = new JPanel();
		mainPanel.add(imagePanel);

		JPanel sidePanel = new JPanel();
		sidePanel.setLayout(new BoxLayout(sidePanel, BoxLayout.PAGE_AXIS));
		sidePanel.setBorder(bborder);
		mainPanel.add(sidePanel);

		label3 = new JLabel("No Selected Image ");
		sidePanel.add(label3);

		// placeholders for image
		for (int i = 0; i < 7; i++) {
			for (int j = 0; j < 7; j++) {
				JLabel ilabel = new JLabel();
				imgLabels[i][j] = ilabel;
				imagePanel.add(ilabel);
			}
		}
		imagePanel.setPreferredSize(new Dimension(200 * 3, 200 * 3));

		// Check boxes for tile labels
		checkPanel = new JPanel();
		checkPanel.setLayout(new BoxLayout(checkPanel, BoxLayout.PAGE_AXIS));
		sidePanel.add(checkPanel);
		boxes = new ArrayList<JCheckBox>();

		// Navigation Buttons
		JPanel navPanel = new JPanel();
		navPanel.setLayout(new BoxLayout(navPanel, BoxLayout.PAGE_AXIS));
		navPanel.setBorder(bborder);
		sidePanel.add(navPanel);

		JButton upButton = new JButton("Up");
		upButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				updateCurrTile();
				Tile newTile = hmodel.upTile();
				if (newTile != null)
					displayTile(newTile);
				// else
				// JOptionPane.showMessageDialog(null, "No tile above");
			}

		});
		navPanel.add(upButton);

		JPanel midPanel = new JPanel();
		midPanel.setBorder(bborder);
		navPanel.add(midPanel);

		JButton leftButton = new JButton("Left");
		leftButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				updateCurrTile();
				Tile newTile = hmodel.leftTile();
				if (newTile != null)
					displayTile(newTile);
				// else
				// JOptionPane.showMessageDialog(null, "No tile to left");
			}

		});
		midPanel.add(leftButton);

		JLabel labelx = new JLabel("                                         ");
		midPanel.add(labelx);

		JButton rightButton = new JButton("Right");
		rightButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				updateCurrTile();
				Tile newTile = hmodel.rightTile();
				if (newTile != null)
					displayTile(newTile);
				// else
				// JOptionPane.showMessageDialog(null, "No tile to right");
			}

		});
		midPanel.add(rightButton);

		JButton downButton = new JButton("Down");
		downButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				updateCurrTile();
				Tile newTile = hmodel.downTile();
				if (newTile != null)
					displayTile(newTile);
				// else
				// JOptionPane.showMessageDialog(null, "No tile below");
			}

		});
		navPanel.add(downButton);

		JLabel labelr2 = new JLabel("   \n\n");
		sidePanel.add(labelr2);

		ButtonGroup group = new ButtonGroup();

		JRadioButton oneButton = new JRadioButton("1");
		oneButton.setActionCommand("1");
		oneButton.setSelected(true);

		JRadioButton twoButton = new JRadioButton("2");
		twoButton.setActionCommand("2");

		JRadioButton threeButton = new JRadioButton("3");
		threeButton.setActionCommand("3");

		JRadioButton fourButton = new JRadioButton("4");
		fourButton.setActionCommand("4");

		group.add(oneButton);
		group.add(twoButton);
		group.add(threeButton);
		group.add(fourButton);

		JPanel radioPanel = new JPanel(new GridLayout(1, 0));
		JLabel labelr = new JLabel("\n\nZoom level:    ");
		radioPanel.add(labelr);
		radioPanel.add(oneButton);
		radioPanel.add(twoButton);
		radioPanel.add(threeButton);
		radioPanel.add(fourButton);

		// Register a listener for the radio buttons.
		ActionListener al = new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				zoomLevel = Integer.parseInt(arg0.getActionCommand());
				Tile ctile = hmodel.currTile();
				if (ctile != null) {
					displayTile(ctile);
				}
			}
		};

		oneButton.addActionListener(al);
		twoButton.addActionListener(al);
		threeButton.addActionListener(al);
		fourButton.addActionListener(al);

		sidePanel.add(radioPanel);
		JLabel labelr3 = new JLabel("   \n\n");
		sidePanel.add(labelr3);

		JPanel controlsPanel = new JPanel();
		sidePanel.add(controlsPanel);

		JButton prevUMButton = new JButton("Unmarked < ");
		prevUMButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				updateCurrTile();
				Tile newTile = hmodel.prevTile();
				while ((newTile != null) && (newTile.getLabels() != null))
					newTile = hmodel.prevTile();
				if (newTile != null)
					displayTile(newTile);
				else
					JOptionPane.showMessageDialog(null, "No previous file");

			}
		});
		controlsPanel.add(prevUMButton);

		JButton prevButton = new JButton("Prev < ");
		prevButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				updateCurrTile();
				Tile newTile = hmodel.prevTile();
				if (newTile != null)
					displayTile(newTile);
				else
					JOptionPane.showMessageDialog(null, "No previous file");

			}
		});
		controlsPanel.add(prevButton);

		JButton nextButton = new JButton("> Next");
		nextButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				updateCurrTile();
				Tile newTile = hmodel.nextTile();
				if (newTile != null)
					displayTile(newTile);
				else
					JOptionPane.showMessageDialog(null, "No more files in directory");
			}

		});
		controlsPanel.add(nextButton);

		JButton nextUMButton = new JButton("> Ummarked");
		nextUMButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				updateCurrTile();
				Tile newTile = hmodel.nextTile();
				while ((newTile != null) && (newTile.getLabels() != null))
					newTile = hmodel.nextTile();
				if (newTile != null)
					displayTile(newTile);
				else
					JOptionPane.showMessageDialog(null, "No more files in directory");
			}

		});
		controlsPanel.add(nextUMButton);

		JPanel savePanel = new JPanel();
		sidePanel.add(savePanel);

		// Save tile info
		sfileLabel = new JLabel("<No Saved File>");
		savePanel.add(sfileLabel);

		JButton saveButton = new JButton("Save");
		saveButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				saveLabels(hmodel.getSaveFile());
			}
		});
		savePanel.add(saveButton);
		JButton saveAsButton = new JButton("Save As...");
		saveAsButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				saveLabels(null);
			}
		});
		savePanel.add(saveAsButton);
	}

	private void saveLabels(File saveFile) {
		updateCurrTile();

		if (saveFile == null) {
			JFileChooser fc = new JFileChooser(hmodel.getWorkingDir()) {
				@Override
				public void approveSelection() {
					File sfile = getSelectedFile();
					System.out.println("Selected file : " + sfile);
					if (!sfile.getName().endsWith(".csv"))
						sfile = new File(sfile.getPath() + ".csv");

					if (sfile.exists()) {
						int result = JOptionPane.showConfirmDialog(this, "The selected file exists, overwrite?",
								"Existing file", JOptionPane.YES_NO_CANCEL_OPTION);
						switch (result) {
						case JOptionPane.YES_OPTION:
							// continue to process
							break;
						case JOptionPane.CANCEL_OPTION:
							cancelSelection();
							return;
						default:
							return;
						}
					}

					hmodel.saveLabels(sfile);
					super.approveSelection();
				}
			};

			fc.setFileSelectionMode(JFileChooser.FILES_ONLY);
			fc.setDialogTitle("Select a file to save current labels");
			fc.setAcceptAllFileFilterUsed(false);
			FileNameExtensionFilter filter = new FileNameExtensionFilter("CSV file", "csv");
			fc.addChoosableFileFilter(filter);
			fc.showSaveDialog(this);
		} else {
			hmodel.saveLabels(saveFile);
		}
		if (hmodel.getSaveFile() != null)
			sfileLabel.setText(hmodel.getSaveFile().getName());
	}

	private void setupCheckBoxes() {

		ArrayList<String> labels = hmodel.getLabels();
		for (String lbl : labels) {
			JCheckBox cb = new JCheckBox(lbl);
			cb.setSelected(false);
			boxes.add(cb);
			checkPanel.add(cb);
		}

	}

	private void displayTile(Tile newTile) {
		System.out.println(newTile.getName());
		String msg;
		if (newTile == null)
			msg = "Error - no tile to display";
		else {
			int imgSize = 256;
			switch (zoomLevel) {
			case 1:
				imgSize = 256;
				break;
			case 2:
				imgSize = 192;
				break;
			case 3:
				imgSize = 108;
				break;
			case 4:
				imgSize = 72;
			default:
				break;
			}
			ImageIcon blankIcon = null;
			if (blankImg != null && (zoomLevel > 1)) {
				Image dimg = blankImg.getScaledInstance(imgSize, imgSize, Image.SCALE_SMOOTH);
				blankIcon = new ImageIcon(dimg);
			}
			for (int i = 0; i < 7; i++) {
				for (int j = 0; j < 7; j++) {
					imgLabels[i][j].setIcon(null);
					imgLabels[i][j].setBorder(null);
				}
			}

			int numtiles = (zoomLevel * 2) - 1;
			Tile[][] subGrid = hmodel.getTileGrid(newTile, numtiles);

			Border greenline = BorderFactory.createLineBorder(Color.green);
			Border whiteline = BorderFactory.createLineBorder(Color.white);

			Border blueline = BorderFactory.createLineBorder(Color.blue);
			msg = "Image:: " + newTile.getName();
			BufferedImage img;
			for (int i = 0; i < numtiles; i++) {
				for (int j = 0; j < numtiles; j++) {
					Tile cTile = subGrid[i][j];
					if (cTile != null) {
						try {
							//System.out.println("Displaying " + cTile.getName());
							img = ImageIO.read(new File(hmodel.getWorkingDir(), cTile.getName()));
							Image dimg = img.getScaledInstance(imgSize, imgSize, Image.SCALE_SMOOTH);
							ImageIcon ic = new ImageIcon(dimg);
							imgLabels[i][j].setIcon(ic);
							if (cTile.getLabels() != null)
								imgLabels[i][j].setBorder(greenline);
							else
								imgLabels[i][j].setBorder(whiteline);
						} catch (IOException e) {
							e.printStackTrace();
						}
					} else {
						imgLabels[i][j].setIcon(blankIcon);
						imgLabels[i][j].setBorder(blueline);
					}
				}
			}
			Border redline = BorderFactory.createLineBorder(Color.red);
			imgLabels[zoomLevel - 1][zoomLevel - 1].setBorder(redline);
			int[] labels = newTile.getLabels();
			if (labels != null) {
				// populate check boxes with existing values
				for (int i = 0; i < labels.length; i++) {
					JCheckBox cb = boxes.get(i);
					if (labels[i] == 0)
						cb.setSelected(false);
					else
						cb.setSelected(true);
				}
			} else {
				// reset checkboxes to false
				for (JCheckBox cb : boxes) {
					cb.setSelected(false);
				}
			}
		}
		label3.setText(msg);
	}

	String chooseDir() {
		JFileChooser chooser;
		String selectedDir;

		chooser = new JFileChooser();

		chooser.setCurrentDirectory(new File(hmodel.getWorkingDir()));
		chooser.setDialogTitle("Choose Data Directory");
		chooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
		chooser.setAcceptAllFileFilterUsed(false);
		//
		if (chooser.showOpenDialog(this) == JFileChooser.APPROVE_OPTION) {
			System.out.println("getSelectedFile() : " + chooser.getSelectedFile());
			selectedDir = chooser.getSelectedFile().toString();

		} else {
			System.out.println("No Selection ");
			selectedDir = null;
		}
		return selectedDir;
	}

	static void setup(HistLabelsModel model) {

		// Create and set up the window.
		JFrame frame = new JFrame("NP Slides Tile Labeller");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		frame.add(new HistLabelsView(model));

		// Display the window.
		frame.pack();
		frame.setVisible(true);

	}

	void updateCurrTile() {
		Tile ctile = hmodel.currTile();
		if (ctile != null) {
			// update this with the values in the checkboxes
			int[] labels = new int[hmodel.getLabels().size()];
			boolean foundLabel = false;
			for (int i = 0; i < labels.length; i++) {
				if (boxes.get(i).isSelected()) {
					foundLabel = true;
					labels[i] = 1;
				} else {
					labels[i] = 0;
				}
			}
			if (foundLabel) {
				ctile.setLabels(labels);
			} else
				ctile.setLabels(null);
		}
	}
}
