package game.blackJack;

public class CheckA {

	private int pn1 = 0;

	private int pn2 = 0;

	private int pn3 = 0;

	private int pn4 = 0;

	private int pn5 = 0;

	char p1;

	char p2;

	char p3;

	char p4;

	char p5;

	private static CheckA instance;

	private CheckA() {
	}

	public static CheckA getInstance() {

		if (instance == null) {
			instance = new CheckA();
		}

		return instance;
	}

	public void setting() {

		this.pn1 = 0;

		this.pn2 = 0;

		this.pn3 = 0;

		this.pn4 = 0;

		this.pn5 = 0;
	}

	public int check() {

		BlackJackBean bean = BlackJackBean.getInstance();

		p1 = bean.getP1().charAt(0);
		p2 = bean.getP2().charAt(0);

		if (bean.getP3() != null) {
			p3 = bean.getP3().charAt(0);
		} else {
			p3 = '0';
		}
		if (bean.getP4() != null) {
			p4 = bean.getP4().charAt(0);
		} else {
			p4 = '0';
		}
		if (bean.getP5() != null) {
			p5 = bean.getP5().charAt(0);
		} else {
			p5 = '0';
		}

		if (p1 == 'A' && getPn1() == 0) {
			return 1;
		} else if (p2 == 'A' && getPn2() == 0) {
			return 2;
		} else if (p3 == 'A' && getPn3() == 0) {
			return 3;
		} else if (p4 == 'A' && getPn4() == 0) {
			return 4;
		} else if (p5 == 'A' && getPn5() == 0) {
			return 5;
		} else {
			return -1;
		}

	}

	public int getPn1() {
		return pn1;
	}

	public void setPn1(int pn1) {
		this.pn1 = pn1;
	}

	public int getPn2() {
		return pn2;
	}

	public void setPn2(int pn2) {
		this.pn2 = pn2;
	}

	public int getPn3() {
		return pn3;
	}

	public void setPn3(int pn3) {
		this.pn3 = pn3;
	}

	public int getPn4() {
		return pn4;
	}

	public void setPn4(int pn4) {
		this.pn4 = pn4;
	}

	public int getPn5() {
		return pn5;
	}

	public void setPn5(int pn5) {
		this.pn5 = pn5;
	}

}
