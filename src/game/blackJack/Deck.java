package game.blackJack;

import game.common.CommonCardHandler;

import java.util.ArrayList;
import java.util.List;

public class Deck extends CommonCardHandler {

	private List<String> Card_Kind = new ArrayList<String>();

	private BlackJackBean bj = BlackJackBean.getInstance();

	private int Card_Count = 52;

	private int pSum;

	private int dSum;

	private int pn;

	private int dn;

	private int Continue;

	private static Deck instance;

	public static Deck getInstance() {

		if (instance == null) {
			instance = new Deck();
		}

		return instance;
	}

	private Deck() {
	}

	public void setting() {

		setPSum(0);

		setDSum(0);

		setCK();

		bj.setD1((String) getCK(getDNum()));

		bj.setD2(null);

		bj.setD3(null);

		bj.setD4(null);

		bj.setD5(null);

		bj.setP1((String) getCK(getPNum()));

		bj.setP2((String) getCK(getPNum()));

		bj.setP3(null);

		bj.setP4(null);

		bj.setP5(null);

	}

	public boolean checkBlackJackAtFirstTime(String p1, String p2) {

		List<String> pArray = new ArrayList<String>(); 
		
		pArray.add(Character.toString(p1.charAt(0)));
		pArray.add(Character.toString(p2.charAt(0)));
		
		return pArray.contains("A") && pArray.contains("1"); //$NON-NLS-1$ //$NON-NLS-2$
		
	}

	public void addCard() {

		if (bj.getP5() == null && bj.getP4() == null

				&& bj.getP3() == null) {

			bj.setP3((String) getCK(getPNum()));

		} else if (bj.getP5() == null

				&& bj.getP4() == null

				&& bj.getP3() != null) {

			bj.setP4((String) getCK(getPNum()));

		} else {

			bj.setP5((String) getCK(getPNum()));
		}
	}

	public void setCK() {
		Card_Kind = new ArrayList<String>();

		for (int i = 0; i < 13; i++) {
			for (int j = 0; j < 4; j++) {
				Card_Kind.add(CARD_NUM[i] + CARD_SHAPE[j]);

			}

		}
	}

	public Object getCK(int n) {
		return Card_Kind.get(n);

	}

	public void removeD() {
		Card_Kind.remove(dn);
		Card_Count = Card_Kind.size();
	}

	public void removeP() {
		Card_Kind.remove(pn);
		Card_Kind.size();
		Card_Count = Card_Kind.size();
	}

	public int getPNum() {

		pn = (int) (Math.random() * Card_Count);

		char sum = ((String) getCK(pn)).charAt(0);

		if (sum == 'A') {
			pSum += 0;
		} else if (sum == '2') {
			pSum += 2;
		} else if (sum == '3') {
			pSum += 3;
		} else if (sum == '4') {
			pSum += 4;
		} else if (sum == '5') {
			pSum += 5;
		} else if (sum == '6') {
			pSum += 6;
		} else if (sum == '7') {
			pSum += 7;
		} else if (sum == '8') {
			pSum += 8;
		} else if (sum == '9') {
			pSum += 9;
		} else {
			pSum += 10;
		}
		return pn;
	}

	public int getDNum() {

		dn = (int) (Math.random() * Card_Count);
		char sum = ((String) getCK(dn)).charAt(0);
		if (sum == 'A') {
			if ((dSum + 11) > 21) {
				dSum += 1;
			} else {
				dSum += 11;
			}

		} else if (sum == '2') {
			dSum += 2;
		} else if (sum == '3') {
			dSum += 3;
		} else if (sum == '4') {
			dSum += 4;
		} else if (sum == '5') {
			dSum += 5;
		} else if (sum == '6') {
			dSum += 6;
		} else if (sum == '7') {
			dSum += 7;
		} else if (sum == '8') {
			dSum += 8;
		} else if (sum == '9') {
			dSum += 9;
		} else {
			dSum += 10;
		}
		return dn;
	}

	public int getDSum() {
		return dSum;
	}

	public void setDSum(int dSum) {
		this.dSum = dSum;
	}

	public int getPSum() {
		return pSum;
	}

	public void setPSum(int pSum) {
		this.pSum = pSum;
	}

	public int getContinue() {
		return Continue;
	}

	public void setContinue(int continue1) {
		Continue = continue1;
	}
	
	public void stayCard() {
		
		if (bj.getD5() == null && bj.getD4() == null && bj.getD3() == null
				&& bj.getD2() == null) {
			
			bj.setD2((String) getCK(getDNum()));
			
		} else if (bj.getD5() == null && bj.getD4() == null
				&& bj.getD3() == null) {
			
			bj.setD3((String) getCK(getDNum()));
			
		} else if (bj.getD5() == null && bj.getD4() == null
				&& bj.getD3() != null) {
			
			bj.setD4((String) getCK(getDNum()));
			
		} else {
			
			bj.setD5((String) getCK(getDNum()));
			removeD();
		}
	}

}
