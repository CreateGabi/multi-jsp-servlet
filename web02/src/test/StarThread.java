package test;

public class StarThread extends Thread {

	@Override
	public void run() {
		for (int i = 500; i > 0; i--) {
			System.out.println("*");
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  // 0.5초, cpu자원을 자바가 요청
		}
	}
}
