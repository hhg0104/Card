package game.blackJack;

public class BlackJackBean {

	private String name;

	private String id;

	private int pMoney;

	private int betMoney;

	private int doubleBet;

	private int dealer;

	private int player;

	private int dNum;

	private int pNum;

	private String d1;

	private String d2;

	private String d3;

	private String d4;

	private String d5;

	private String p1;

	private String p2;

	private String p3;

	private String p4;

	private String p5;

	private static BlackJackBean instance;
	
	private BlackJackBean() {
	}
	
	public static BlackJackBean getInstance(){
		
		if(instance==null){
			instance=new BlackJackBean();
		}
		
		return instance;
	}
	
	public String getD1() {
		return d1;
	}

	public void setD1(String d1) {
		this.d1 = d1;
		if (d1 != null) {
			Deck.getInstance().removeD();
		}
	}

	public String getD2() {
		return d2;
	}

	public void setD2(String d2) {
		this.d2 = d2;
		if (d2 != null) {
			Deck.getInstance().removeD();
		}
	}

	public String getD3() {
		return d3;
	}

	public void setD3(String d3) {
		this.d3 = d3;
		if (d3 != null) {
			Deck.getInstance().removeD();
		}
	}

	public String getD4() {
		return d4;
	}

	public void setD4(String d4) {
		this.d4 = d4;
		if (d4 != null) {
			Deck.getInstance().removeD();
		}
	}

	public String getD5() {
		return d5;
	}

	public void setD5(String d5) {
		this.d5 = d5;
		if (d5 != null) {
			Deck.getInstance().removeD();
		}
	}

	public String getP1() {
		return p1;
	}

	public void setP1(String p1) {
		this.p1 = p1;
		Deck.getInstance().removeP();
	}

	public String getP2() {
		return p2;
	}

	public void setP2(String p2) {
		this.p2 = p2;
		Deck.getInstance().removeP();
	}

	public String getP3() {
		return p3;
	}

	public void setP3(String p3) {
		this.p3 = p3;
		if (p3 != null) {
			Deck.getInstance().removeP();
		}
	}

	public String getP4() {
		return p4;
	}

	public void setP4(String p4) {
		this.p4 = p4;
		if (p4 != null) {
			Deck.getInstance().removeP();
		}
	}

	public String getP5() {
		return p5;
	}

	public void setP5(String p5) {
		this.p5 = p5;
		if (p5 != null) {
			Deck.getInstance().removeP();
		}
	}

	public String getName() {
		return name;
	}

	public void setName(String val) {
		this.name = val;
	}

	public int getDealer() {
		return dealer;
	}

	public void setDealer(int val) {
		this.dealer = val;
	}

	public int getplayer() {
		return player;
	}

	public void setplayer(int val) {
		this.player = val;

	}

	public int getDNum() {
		return dNum;
	}

	public void setDNum(int val) {
		this.dNum = val;
	}

	public int getPNum() {
		return pNum;
	}

	public void setPNum(int val) {
		this.pNum = val;

	}

	public int getPMoney() {
		return pMoney;
	}

	public void setPMoney(int pMoney) {
		this.pMoney = pMoney;
	}

	public int getBetMoney() {
		return betMoney;
	}

	public void setBetMoney(int betMoney) {
		this.betMoney = betMoney;
	}

	public int getDoubleBet() {
		return doubleBet;
	}

	public void setDoubleBet(int doubleBet) {
		this.doubleBet = doubleBet;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
