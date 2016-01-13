package game.sevenPoker;

import game.common.CommonCardHandler;

import java.util.ArrayList;
import java.util.List;

public class Deck extends CommonCardHandler {

	private List<String> Card_Kind = new ArrayList<String>();
	
	private PokerBean pk = PokerBean.getInstance();
	
	private int pn;
	
	private int dn;
	
	private int Card_Count;

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
		setCK();

		pk.setD1((String) getCK(getDNum()));
		removeD();
		pk.setD2(null);
		pk.setD3(null);
		pk.setD4(null);
		pk.setD5(null);
		pk.setD6(null);
		pk.setD7(null);

		pk.setP1((String) getCK(getPNum()));
		removeP();
		pk.setP2((String) getCK(getPNum()));
		removeP();
		pk.setP3((String) getCK(getPNum()));
		removeP();
		pk.setP4(null);
		pk.setP5(null);
		pk.setP6(null);
		pk.setP7(null);
	}

	public void setCK() {
		Card_Kind = new ArrayList<String>();

		for (int i = 0; i < 13; i++) {
			for (int j = 0; j < 4; j++) {
				Card_Kind.add(CARD_NUM_POKER[i] + CARD_SHAPE[j]);

			}
			Card_Count = Card_Kind.size();
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
		Card_Count = Card_Kind.size();
	}

	public int getPNum() {

		pn = (int) (Math.random() * Card_Count);
		return pn;
	}

	public int getDNum() {

		dn = (int) (Math.random() * Card_Count);
		return dn;
	}

	public void addDCard() {
		if (pk.getD4() == null) {
			pk.setD4((String) getCK(getDNum()));
			removeD();
		} else if (pk.getD5() == null) {
			pk.setD5((String) getCK(getDNum()));
			removeD();
		} else if (pk.getD6() == null) {
			pk.setD6((String) getCK(getDNum()));
			removeD();
		} else if (pk.getD7() == null) {
			pk.setD7((String) getCK(getDNum()));
			removeD();
		} else {
			pk.setD2((String) getCK(getDNum()));
			removeD();
			pk.setD3((String) getCK(getDNum()));
			removeD();
		}
	}

	public void addPCard() {
		if (pk.getP4() == null) {
			pk.setP4((String) getCK(getPNum()));
			removeP();
		} else if (pk.getP5() == null) {
			pk.setP5((String) getCK(getPNum()));
			removeP();
		} else if (pk.getP6() == null) {
			pk.setP6((String) getCK(getPNum()));
			removeP();
		} else if (pk.getP7() == null) {
			pk.setP7((String) getCK(getPNum()));
			removeP();
		}
	}
}
