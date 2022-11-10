package test;

public class ThreadMain2 {

	public static void main(String[] args) {
		StarThread star = new StarThread();
		DollarThread dollar = new DollarThread();
		AtThread at = new AtThread();
		
		star.start();
		dollar.start();
		at.start();
	}

}
