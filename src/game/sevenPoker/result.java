package game.sevenPoker;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

public class result {

	private String s1;

	private String s2;

	private List<String> front = new ArrayList<String>();

	private List<String> back = new ArrayList<String>();

	private int score;

	private int scoreD;

	private int scoreP;

	private String card_result;

	private String card_resultD;

	private String card_resultP;

	private PokerBean pk = PokerBean.getInstance();

	public TreeSet<String> card_List1() {

		TreeSet<String> cList = new TreeSet<String>();

		cList.add(pk.getD1());
		cList.add(pk.getD2());
		cList.add(pk.getD3());
		cList.add(pk.getD4());
		cList.add(pk.getD5());
		cList.add(pk.getD6());
		cList.add(pk.getD7());

		return cList;
	}

	public TreeSet<String> card_List2() {

		TreeSet<String> cList = new TreeSet<String>();

		cList.add(pk.getP1());
		cList.add(pk.getP2());
		cList.add(pk.getP3());
		cList.add(pk.getP4());
		cList.add(pk.getP5());
		cList.add(pk.getP6());
		cList.add(pk.getP7());

		return cList;
	}

	public void front() {

		this.front = new ArrayList<String>();

		TreeSet<String> c1 = card_List1();
		Iterator<String> it = c1.descendingIterator();

		while (it.hasNext()) {

			String s = it.next();

			s1 = Character.toString(s.charAt(0));

			front.add(s1);
		}
	}

	public void front2() {
		this.front = new ArrayList<String>();

		TreeSet<String> c1 = card_List2();
		Iterator<String> it = c1.descendingIterator();

		while (it.hasNext()) {
			String s = it.next();
			s1 = s.charAt(0) + ""; //$NON-NLS-1$
			front.add(s1);
		}
	}

	public void back() {
		this.back = new ArrayList<String>();

		TreeSet<String> c2 = card_List1();
		Iterator<String> it = c2.descendingIterator();

		while (it.hasNext()) {
			String s = it.next();
			s2 = s.charAt(1) + ""; //$NON-NLS-1$
			back.add(s2);
		}
	}

	public void back2() {
		this.back = new ArrayList<String>();

		TreeSet<String> c2 = card_List2();
		Iterator<String> it = c2.descendingIterator();

		while (it.hasNext()) {
			String s = it.next();
			s2 = s.charAt(1) + ""; //$NON-NLS-1$
			back.add(s2);
		}
	}

	public void result1() {

		for (int a = 0; a < 7; a++) {
			for (int b = a + 1; b < 7; b++) {
				for (int c = b + 1; c < 7; c++) {
					for (int d = c + 1; d < 7; d++) {
						for (int e = d + 1; e < 7; e++) {

							List<String> front2 = new ArrayList<String>();

							front2.add(front.get(a));
							front2.add(front.get(b));
							front2.add(front.get(c));
							front2.add(front.get(d));
							front2.add(front.get(e));

							for (int i = 0; i < 5; i++) {
								for (int j = i + 1; j < 5; j++) {
									if (front2.get(i).equals(front2.get(j))) {

										List<String> front3 = new ArrayList<String>();

										front3.add(front2.get(0));
										front3.add(front2.get(1));
										front3.add(front2.get(2));
										front3.add(front2.get(3));
										front3.add(front2.get(4));

										String p = front3.get(i);
										front3.remove(i);
										front3.remove(j - 1);

										for (int k = 0; k < 3; k++) {
											if (front3.get(k).equals(p)) {

												List<String> front4 = new ArrayList<String>();

												front4.add(front3.get(0));
												front4.add(front3.get(1));
												front4.add(front3.get(2));

												front4.remove(k);

												if ((front4.get(0).equals(p)) || (front4.get(1).equals(p))) {
													if (score < 7) {
														score = 7;
														if (p.equals("1")) { //$NON-NLS-1$
															card_result = "10 Four Card"; //$NON-NLS-1$
														} else {
															card_result = p
																	+ " Four Card"; //$NON-NLS-1$
														}
													}
												} else if (front4.get(0).equals(front4.get(1))) {
													if (score < 6) {
														score = 6;
														if (p.equals("1")) { //$NON-NLS-1$
															card_result = "10 Full House"; //$NON-NLS-1$
														} else {
															card_result = p
																	+ " Full House"; //$NON-NLS-1$
														}
													}
												} else {
													if (score < 3) {
														score = 3;
														if (p.equals("1")) { //$NON-NLS-1$
															card_result = "10 Triple"; //$NON-NLS-1$
														} else {
															card_result = p
																	+ " Triple"; //$NON-NLS-1$
														}
													}
												}
											}

										}
										for (int q = 0; q < 3; q++) {
											for (int z = q + 1; z < 3; z++) {
												if (front3.get(q).equals(front3
														.get(z))) {
													String p2 = front3
															.get(q);
													if (score < 2) {
														score = 2;
														if (p.equals("1")) { //$NON-NLS-1$
															card_result = "10, " //$NON-NLS-1$
																	+ p2
																	+ " Two Pair"; //$NON-NLS-1$
														} else if (p2.equals("1")) { //$NON-NLS-1$
															card_result = p
																	+ ", 10" //$NON-NLS-1$
																	+ " Two Pair"; //$NON-NLS-1$
														} else {
															card_result = p
																	+ ", " //$NON-NLS-1$
																	+ p2
																	+ " Two Pair"; //$NON-NLS-1$
														}
													}
												}
											}
										}
										if (score < 1) {

											score = 1;

											if (p.equals("1")) { //$NON-NLS-1$

												card_result = "10 One Pair"; //$NON-NLS-1$
											} else {

												card_result = p + " One Pair"; //$NON-NLS-1$
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}

		if (score == 0) {

			score = 0;

			card_result = "Nothing"; //$NON-NLS-1$
		}
	}

	public void result2() {

		for (int a = 0; a < 7; a++) {
			for (int b = a + 1; b < 7; b++) {
				for (int c = b + 1; c < 7; c++) {
					for (int d = c + 1; d < 7; d++) {
						for (int e = d + 1; e < 7; e++) {

							String f5 = front.get(e);
							String f4 = front.get(d);
							String f3 = front.get(c);
							String f2 = front.get(b);
							String f1 = front.get(a);
							String b1 = back.get(e);
							String b2 = back.get(d);
							String b3 = back.get(c);
							String b4 = back.get(b);
							String b5 = back.get(a);

							if ((f5.equals("2") && f4.equals("3") && f3.equals("4") && f2.equals("5") && f1.equals("6")) //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$ //$NON-NLS-5$
									|| (f5.equals("3") & f4.equals("4") && f3.equals("5") //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
											& f2.equals("6") && f1.equals("7")) //$NON-NLS-1$ //$NON-NLS-2$
									|| (f5.equals("4") & f4.equals("5") && f3.equals("6") //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
											& f2.equals("7") & f1.equals("8")) //$NON-NLS-1$ //$NON-NLS-2$
									|| (f5.equals("5") && f4.equals("6") && f3.equals("7") //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
											& f2.equals("8") && f1.equals("9")) //$NON-NLS-1$ //$NON-NLS-2$
									|| (f5.equals("1") && f4.equals("6") && f3.equals("7") //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
											& f2.equals("8") && f1.equals("9")) //$NON-NLS-1$ //$NON-NLS-2$
									|| (f5.equals("1") && f4.equals("7") & f3.equals("8") //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
											& f2.equals("9") & f1.equals("J")) //$NON-NLS-1$ //$NON-NLS-2$
									|| (f5.equals("1") & f4.equals("8") & f3.equals("9") //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
											& f2.equals("J") && f1.equals("Q")) //$NON-NLS-1$ //$NON-NLS-2$
									|| (f5.equals("1") & f4.equals("9") && f3.equals("J") //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
											& f2.equals("K") & f1.equals("Q")) //$NON-NLS-1$ //$NON-NLS-2$
									|| (f5.equals("1") & f4.equals("A") & f3.equals("J") //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
											& f2.equals("K") && f1.equals("Q")) //$NON-NLS-1$ //$NON-NLS-2$
									|| (f5.equals("2") && f4.equals("3") && f3.equals("4")//$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
											& f2.equals("5") && f1.equals("A"))) { //$NON-NLS-1$ //$NON-NLS-2$

								if ((b1.equals(b2)) && (b2.equals(b3)) && (b3.equals(b4))
										&& (b4.equals(b5))) {
									if (f5.equals("1")) { //$NON-NLS-1$
										if (score < 9) {
											score = 9;
											card_result = "Royal Straight Flush"; //$NON-NLS-1$
										}
									}

									if (score < 8) {
										score = 8;
										card_result = f1 + " Straight Flush"; //$NON-NLS-1$
									}
								} else {
									if (f4.equals("A") || f1.equals("A")) { //$NON-NLS-1$ //$NON-NLS-2$
										if (score < 4) {
											score = 4;
											card_result = "A Straight"; //$NON-NLS-1$
										}
									} else if (f2.equals("K")) { //$NON-NLS-1$
										if (score < 4) {
											score = 4;
											card_result = "K Straight"; //$NON-NLS-1$
										}
									} else if (f5.equals("1")) { //$NON-NLS-1$
										if (score < 4) {
											score = 4;
											card_result = "10 Straight"; //$NON-NLS-1$
										}
									} else {

										if (score < 4) {
											score = 4;
											card_result = f1 + " Straight"; //$NON-NLS-1$
										}
									}
								}
							}

						}
					}
				}
			}
		}
		if (score == 0) {
			score = 0;
			card_result = "Nothing"; //$NON-NLS-1$
		}
	}

	public void result3() {

		for (int a = 0; a < 7; a++) {
			for (int b = a + 1; b < 7; b++) {
				for (int c = b + 1; c < 7; c++) {
					for (int d = c + 1; d < 7; d++) {
						for (int e = d + 1; e < 7; e++) {
							String b1 = back.get(e);
							String b2 = back.get(d);
							String b3 = back.get(c);
							String b4 = back.get(b);
							String b5 = back.get(a);

							String f1 = front.get(e);
							String f2 = front.get(d);
							String f3 = front.get(c);
							String f4 = front.get(b);
							String f5 = front.get(a);

							if (((b1.equals(b2)) & (b2.equals(b3)) & (b3.equals(b4)) & (b4.equals(b5)))) {
								
								List<String> check = evenS();

								int d1 = check.indexOf(f1);
								int d2 = check.indexOf(f2);
								int d3 = check.indexOf(f3);
								int d4 = check.indexOf(f4);
								int d5 = check.indexOf(f5);

								TreeSet<Integer> m = new TreeSet<Integer>();
								m.add(d1);
								m.add(d2);
								m.add(d3);
								m.add(d4);
								m.add(d5);
								int mf = m.last();

								String max = check.get(mf);

								for (int i = 0; i < 5; i++) {
									if (b1.equals("S")) { //$NON-NLS-1$
										if (score < 5) {
											score = 5;
											if (max.equals("1")) { //$NON-NLS-1$
												card_result = "10 Spade Flush"; //$NON-NLS-1$
											} else {

												card_result = max
														+ " Spade Flush"; //$NON-NLS-1$
											}
										}
									} else if (b1.equals("D")) { //$NON-NLS-1$
										if (score < 5) {
											score = 5;
											if (max.equals("1")) { //$NON-NLS-1$
												card_result = "10 Diamond Flush"; //$NON-NLS-1$
											} else {

												card_result = max
														+ " Diamond Flush"; //$NON-NLS-1$
											}
										}
									} else if (b1.equals("H")) { //$NON-NLS-1$
										if (score < 5) {
											score = 5;
											if (max.equals("1")) { //$NON-NLS-1$
												card_result = "10 Heart Flush"; //$NON-NLS-1$
											} else {

												card_result = max
														+ " Heart Flush"; //$NON-NLS-1$
											}
										}
									} else {
										if (score < 5) {
											score = 5;
											if (max.equals("1")) { //$NON-NLS-1$
												card_result = "10 Clover Flush"; //$NON-NLS-1$
											} else {

												card_result = max
														+ " Clover Flush"; //$NON-NLS-1$
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		if (score == 0) {
			score = 0;
			card_result = "Nothing"; //$NON-NLS-1$
		}
	}

	public void getResult() {
		front();
		back();
		result1();
		result2();
		result3();
		scoreD = this.score;
		card_resultD = this.card_result;

		this.score = 0;

		front2();
		back2();
		result1();
		result2();
		result3();
		scoreP = this.score;
		card_resultP = this.card_result;
	}

	private List<String> evenS() {
		List<String> evenCase = new ArrayList<String>();

		evenCase.add("2"); //$NON-NLS-1$
		evenCase.add("3"); //$NON-NLS-1$
		evenCase.add("4"); //$NON-NLS-1$
		evenCase.add("5"); //$NON-NLS-1$
		evenCase.add("6"); //$NON-NLS-1$
		evenCase.add("7"); //$NON-NLS-1$
		evenCase.add("8"); //$NON-NLS-1$
		evenCase.add("9"); //$NON-NLS-1$
		evenCase.add("1"); //$NON-NLS-1$
		evenCase.add("J"); //$NON-NLS-1$
		evenCase.add("Q"); //$NON-NLS-1$
		evenCase.add("K"); //$NON-NLS-1$
		evenCase.add("A"); //$NON-NLS-1$

		return evenCase;
	}

	private List<String> shape() {
		List<String> evenFlush = new ArrayList<String>();
		evenFlush.add("C"); //$NON-NLS-1$
		evenFlush.add("H"); //$NON-NLS-1$
		evenFlush.add("D"); //$NON-NLS-1$
		evenFlush.add("S"); //$NON-NLS-1$
		return evenFlush;
	}

	public int whoWin() {
		if (scoreD > scoreP) {
			return 1;
		} else if (scoreD < scoreP) {
			return 2;
		} else {
			return evenScore();
		}
	}

	private int evenScore() {

		char d = card_resultD.charAt(0);
		char p = card_resultP.charAt(0);

		int resultD = evenS().indexOf(Character.toString(d));
		int resultP = evenS().indexOf(Character.toString(p));

		if (resultD > resultP) {
			return 1;
		} else if (resultD < resultP) {
			return 2;
		} else {
			return byShape();
		}
	}

	private int byShape() {

		char d = card_resultD.charAt(0);
		char p = card_resultP.charAt(0);

		int cardD = shape().indexOf(Character.toString(d));
		int cardP = shape().indexOf(Character.toString(p));

		if (cardD > cardP) {
			return 1;
		} else if (cardD < cardP) {
			return 2;
		} else {
			return 0;
		}
	}

	public void moneyResult() {
		if (whoWin() == 1) {

			pk.setpMoney(pk.getpMoney() - pk.getBetMoney());
			pk.setBetMoney(pk.getInitBetMoney());

		} else if (whoWin() == 2) {

			pk.setpMoney(pk.getpMoney() + pk.getBetMoney());
			pk.setBetMoney(pk.getInitBetMoney());

		} else if (whoWin() == 0) {

			pk.setBetMoney(pk.getInitBetMoney());

		}
	}

	public void die() {

		pk.setpMoney(pk.getpMoney() - pk.getBetMoney());
		pk.setBetMoney(pk.getInitBetMoney());
	}

	public int getScoreD() {
		return scoreD;
	}

	public void setScoreD(int scoreD) {
		this.scoreD = scoreD;
	}

	public int getScoreP() {
		return scoreP;
	}

	public void setScoreP(int scoreP) {
		this.scoreP = scoreP;
	}

	public String getCard_resultD() {
		return card_resultD;
	}

	public void setCard_resultD(String card_resultD) {
		this.card_resultD = card_resultD;
	}

	public String getCard_resultP() {
		return card_resultP;
	}

	public void setCard_resultP(String card_resultP) {
		this.card_resultP = card_resultP;
	}
}
