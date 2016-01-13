package game.bakara;

public class BakaraBean {

	private String name;

	private String id;

	private int pMoney;

	private int betMoney;

	private int dealer;

	private int player;

	private int dNum;

	private int pNum;

	private String d1;

	private String d2;

	private String d3;

	private String p1;

	private String p2;

	private String p3;

	private static BakaraBean instance;

	private BakaraBean() {
	}

	public static BakaraBean getInstance() {

		if (instance == null) {
			instance = new BakaraBean();
		}

		return instance;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getpMoney() {
		return pMoney;
	}

	public void setpMoney(int pMoney) {
		this.pMoney = pMoney;
	}

	public int getBetMoney() {
		return betMoney;
	}

	public void setBetMoney(int betMoney) {
		this.betMoney = betMoney;
	}

	public int getDealer() {
		return dealer;
	}

	public void setDealer(int dealer) {
		this.dealer = dealer;
	}

	public int getPlayer() {
		return player;
	}

	public void setPlayer(int player) {
		this.player = player;
	}

	public int getdNum() {
		return dNum;
	}

	public void setdNum(int dNum) {
		this.dNum = dNum;
	}

	public int getpNum() {
		return pNum;
	}

	public void setpNum(int pNum) {
		this.pNum = pNum;
	}

	public String getD1() {
		return d1;
	}

	public void setD1(String d1) {
		this.d1 = d1;
	}

	public String getD2() {
		return d2;
	}

	public void setD2(String d2) {
		this.d2 = d2;
	}

	public String getD3() {
		return d3;

	}

	public void setD3(String d3) {
		this.d3 = d3;
	}

	public String getP1() {
		return p1;
	}

	public void setP1(String p1) {
		this.p1 = p1;
	}

	public String getP2() {
		return p2;
	}

	public void setP2(String p2) {
		this.p2 = p2;
	}

	public String getP3() {
		return p3;
	}

	public void setP3(String p3) {
		this.p3 = p3;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
