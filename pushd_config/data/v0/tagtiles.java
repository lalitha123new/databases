
public class tagtiles {
	
	public static void main(String[] args) {
		
		HistLabelsModel model = new HistLabelsModel();
		
		javax.swing.SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                HistLabelsView.setup(model);
            }
        });
		
	}

}
