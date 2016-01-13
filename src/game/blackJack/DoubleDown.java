package game.blackJack;

public class DoubleDown {

	private boolean Double = false;

	private static DoubleDown instance;

	private DoubleDown() {
	}

	public static DoubleDown getInstance() {

		if (instance == null) {
			instance = new DoubleDown();
		}

		return instance;
	}
	
	public boolean getDouble() {
		return Double;
	}

	public void setDouble(boolean d) {
		this.Double = d;
	}

	public void doubleOn() {

		setDouble(true);

		BlackJackBean bj = BlackJackBean.getInstance();

		bj.setBetMoney(bj.getBetMoney() * 2);
	}

}
