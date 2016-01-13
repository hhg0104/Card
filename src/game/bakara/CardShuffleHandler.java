package game.bakara;

import game.common.CommonCardHandler;

import java.util.ArrayList;
import java.util.List;

public class CardShuffleHandler extends CommonCardHandler{

	private List<String> Card_Kind = new ArrayList<String>();

	private BakaraBean bk = BakaraBean.getInstance();

	private int pSum;

	private int dSum;

	private int pn;

	private int dn;

	private int Card_Count = 52;

	private int Continue;

	private static CardShuffleHandler instance;

	private CardShuffleHandler() {
	}

	public static CardShuffleHandler getInstance() {

		if (instance == null) {
			instance = new CardShuffleHandler();
		}

		return instance;
	}

	public void setting() {

		setCardType();

		bk.setD1((String) getCK(getDNum()));
		removeD();

		bk.setD2((String) getCK(getDNum()));
		removeD();

		bk.setP1((String) getCK(getPNum()));
		removeP();

		bk.setP2((String) getCK(getPNum()));
		removeP();
	}

	public void setDefault() {

		ResultHandler re = ResultHandler.getInstance();

		bk.setD1(null);

		bk.setD2(null);

		bk.setD3(null);

		bk.setP1(null);

		bk.setP2(null);

		bk.setP3(null);

		re.setPlayer(0);

		re.setBanker(0);

		pSum = 0;

		dSum = 0;
	}

	public void setCardType() {

		Card_Kind = new ArrayList<String>();

		for (int i = 0; i < 13; i++) {
			for (int j = 0; j < 4; j++) {
				Card_Kind.add(CARD_NUM[i] + CARD_SHAPE[j]);

			}
		}
	}

	public String getCK(int n) {
		return Card_Kind.get(n);

	}

	public void removeD() {
		Card_Kind.remove(dn);
		Card_Count = Card_Kind.size();
	}

	public void removeP() {
		Card_Kind.remove(pn);
		Card_Count = Card_Kind.size();
	}

	public int getPNum() {

		pn = (int) (Math.random() * Card_Count);
		
		char sum = ((String) getCK(pn)).charAt(0);

		if (sum == 'A') {
			pSum += 1;
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
			dSum += 1;
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

	public int getPSum() {
		return pSum;
	}

	public void setPSum(int pSum) {
		this.pSum = pSum;
	}

	public int resultDNum() {

		int resultDNum = getDSum() % 10;

		return resultDNum;
	}

	public int resultPNum() {

		int resultPNum = getPSum() % 10;

		return resultPNum;
	}

	public int getContinue() {
		return Continue;
	}

	public void setContinue(int continue1) {
		Continue = continue1;
	}
}
