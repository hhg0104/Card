package game.blackJack;

public class Result {

	private int pMoney;

	private int betMoney;

	private Deck dc = Deck.getInstance();

	private BlackJackBean bj = BlackJackBean.getInstance();

	private static Result instance;

	private Result() {
	}

	public static Result getInstance() {

		if (instance == null) {
			instance = new Result();
		}

		return instance;
	}
	
	public int result() {

		char p1 = bj.getP1().charAt(0);
		char p2 = bj.getP2().charAt(0);

		if (dc.getDSum() == 21 && dc.getPSum() == 21) {

			return 0;
		} else if ((p1 == 'A' && p2 == '1') || (p1 == 'A' && p2 == 'J')
				|| (p1 == 'A' && p2 == 'Q') || (p1 == 'A' && p2 == 'K')
				|| (p1 == '1' && p2 == 'A') || (p1 == 'J' && p2 == 'A')
				|| (p1 == 'Q' && p2 == 'A') || (p1 == 'K' && p2 == 'A')) {

			return -1;
		} else if (dc.getDSum() == 21) {

			return 1;
		} else if (dc.getPSum() == 21) {

			return 2;
		} else if (dc.getPSum() > 21) {

			return 3;
		} else if (dc.getDSum() > 21) {

			return 4;
		} else if (dc.getPSum() > dc.getDSum()) {

			return 5;
		} else if (dc.getPSum() < dc.getDSum()) {

			return 6;
		} else {

			return 7;
		}
	}

	public boolean checkBJ1() {

		char p1 = bj.getP1().charAt(0);

		char p2 = bj.getP2().charAt(0);

		if (((p1 == 'A' && p2 == '1') || (p1 == 'A' && p2 == 'J')
				|| (p1 == 'A' && p2 == 'Q') || (p1 == 'A' && p2 == 'K')
				|| (p1 == '1' && p2 == 'A') || (p1 == 'J' && p2 == 'A')
				|| (p1 == 'Q' && p2 == 'A') || (p1 == 'K' && p2 == 'A'))) {

			return true;
		} else {

			return false;
		}
	}

	public void winMoney() {

		pMoney = bj.getPMoney();

		betMoney = bj.getBetMoney();

		int w = result();
		if (w == 0) {
			pMoney += 0;
			bj.setPMoney(pMoney);
		} else if (w == -1) {
			pMoney += (betMoney + (betMoney * 0.5));
			bj.setPMoney(pMoney);
		} else if (w == 1) {
			pMoney -= betMoney;
			bj.setPMoney(pMoney);
		} else if (w == 2) {
			pMoney += betMoney;
			bj.setPMoney(pMoney);
		} else if (w == 3) {
			pMoney -= betMoney;
			bj.setPMoney(pMoney);
		} else if (w == 4) {
			pMoney += betMoney;
			bj.setPMoney(pMoney);
		} else if (w == 5) {
			pMoney += betMoney;
			bj.setPMoney(pMoney);
		} else if (w == 6) {
			pMoney -= betMoney;
			bj.setPMoney(pMoney);
		} else if (w == 7) {
			pMoney += 0;
			bj.setPMoney(pMoney);
		}
	}

	public boolean checkBJ() {
		if (checkBJ1() == true && dc.getDSum() < 10) {
			return true;
		} else if (checkBJ1() == true && bj.getD2() != null) {
			if (dc.getDSum() < 21) {
				return true;
			}
		} else {
			return false;
		}
		return false;
	}

	public int getPMoney() {
		return pMoney;
	}

	public int betMoney() {
		return betMoney;
	}

	public void evenMoney() {

		pMoney += betMoney;

		bj.setPMoney(pMoney);
	}
}
