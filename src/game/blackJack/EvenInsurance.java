package game.blackJack;

public class EvenInsurance {

	private static final int insureMoney = 0;

	private boolean insure = false;

	private Result re = Result.getInstance();

	private Deck dc = Deck.getInstance();

	private BlackJackBean bj = BlackJackBean.getInstance();

	private static EvenInsurance instance;

	private EvenInsurance() {
	}

	public static EvenInsurance getInstance() {

		if (instance == null) {
			instance = new EvenInsurance();
		}

		return instance;
	}

	public boolean EvenCheck() {

		char d1 = bj.getD1().charAt(0);

		if (re.checkBJ1() && (d1 == 'A' || d1 == '1' || d1 == 'J' || d1 == 'Q' || d1 == 'K')) {

			return true;

		} else {

			return false;
		}
	}

	public boolean InsuranceCheck() {

		char d1 = bj.getD1().charAt(0);

		if ((d1 == 'A') && bj.getD2() == null) {
			return true;
		} else {
			return false;
		}
	}

	public void InsureOn() {
		this.insure = true;
	}

	public boolean InsureSuccess() {

		if (bj.getD2() != null && bj.getD3() == null && dc.getDSum() == 21) {
			return true;
		} else {
			return false;
		}
	}

	public int getInsureMoney() {
		return insureMoney;
	}

	public void setInsure(boolean i) {
		this.insure = i;
	}

	public boolean getInsure() {
		return insure;
	}
}
