package game.bakara;

import java.util.ArrayList;
import java.util.List;

public class ResultHandler {

	private List<String> record = new ArrayList<String>();

	private CardShuffleHandler dc = CardShuffleHandler.getInstance();

	private BakaraBean bk = BakaraBean.getInstance();

	private int banker;

	private int player;

	private static ResultHandler instance;

	private ResultHandler() {
	}

	public static ResultHandler getInstance() {

		if (instance == null) {
			instance = new ResultHandler();
		}

		return instance;
	}

	public boolean addBCase() {

		if (bk.getP3() != null) {

			char p3 = bk.getP3().charAt(0);

			switch (dc.resultDNum()) {
			case 3:
				if (p3 == 'A' || p3 == '0' || p3 == '2' || p3 == '3' || p3 == '4' || p3 == '5' ||
						p3 == '6' || p3 == '7' || p3 == '9') {
					return true;
				}
				break;

			case 4:
				if (p3 == '2' || p3 == '3' || p3 == '4' || p3 == '5' ||
						p3 == '6' || p3 == '7') {
					return true;
				}
				break;
			case 5:
				if (p3 == '4' || p3 == '5' || p3 == '6' || p3 == '7') {
					return true;
				}
				break;
			}
		}
		return false;
	}

	public boolean addPCase() {

		if (dc.resultPNum() == 1 || dc.resultPNum() == 2 ||

				dc.resultPNum() == 3 || dc.resultPNum() == 4 || dc.resultPNum() == 5 ||

				dc.resultPNum() == 0) {

			return true;

		} else {
			return false;
		}
	}

	public int whoWin() {

		if (dc.resultDNum() > dc.resultPNum()) {

			return 1;

		} else if (dc.resultDNum() < dc.resultPNum()) {

			return 2;

		} else {

			return 3;
		}
	}

	public int winMoney() {

		if (isBanker() == 1 & isPlayer() == 0 & whoWin() == 1) {

			return 1;// ¹ðÄ¿½Â¸®, ½ÂÀÚ¸ÂÃã

		} else if (isBanker() == 1 & isPlayer() == 0 & whoWin() == 2) {

			return 2;// ¹ðÄ¿½Â¸®, ½ÂÀÚ Æ²¸²

		} else if (isPlayer() == 1 & isBanker() == 0 & whoWin() == 1) {

			return 3;// ÇÃ·¹ÀÌ¾î ½Â¸®, ½ÂÀÚ Æ²¸²

		} else if (isPlayer() == 1 & isBanker() == 0 & whoWin() == 2) {

			return 4;// ÇÃ·¹ÀÌ¾î ½Â¸®, ½ÂÀÚ ¸ÂÃã

		} else if (whoWin() == 3) {

			return 5;// ºñ±è

		} else {

			return 0;
		}
	}

	public void getMoney() {

		switch (winMoney()) {

		case 1:
			bk.setpMoney(bk.getpMoney() + (bk.getBetMoney() * 95 / 100));
			break;
		case 2:
			bk.setpMoney(bk.getpMoney() - bk.getBetMoney());
			break;
		case 3:
			bk.setpMoney(bk.getpMoney() - bk.getBetMoney());
			break;
		case 4:
			bk.setpMoney(bk.getpMoney() + bk.getBetMoney());
			break;
		case 5:
			bk.setpMoney(bk.getpMoney());
			break;
		}

	}

	public void record() {
		if (dc.resultDNum() > dc.resultPNum()) {

			record.add(Messages.getString("ResultHandler.0")); //$NON-NLS-1$
			setRecord(record);

		} else if (dc.resultDNum() > dc.resultPNum()) {

			record.add(Messages.getString("ResultHandler.1")); //$NON-NLS-1$
			setRecord(record);

		} else if (dc.resultDNum() < dc.resultPNum()) {

			record.add(Messages.getString("ResultHandler.2")); //$NON-NLS-1$
			setRecord(record);

		} else if (dc.resultDNum() < dc.resultPNum()) {

			record.add(Messages.getString("ResultHandler.3")); //$NON-NLS-1$
			setRecord(record);

		} else {

			record.add(Messages.getString("ResultHandler.4")); //$NON-NLS-1$
			setRecord(record);

		}

	}

	public int isBanker() {
		return banker;
	}

	public int isPlayer() {
		return player;
	}

	public void setBanker(int banker) {
		this.banker = banker;
	}

	public void setPlayer(int player) {
		this.player = player;
	}

	public List<String> getRecord() {
		return record;
	}

	public void setRecord(List<String> record) {
		this.record = record;
	}
}
