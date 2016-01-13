package game.common;

public abstract class CommonCardHandler {

	protected static final String COMMA = ","; //$NON-NLS-1$

	protected static final String[] CARD_SHAPE = "S,D,H,C".split(COMMA); //$NON-NLS-1$

	protected static final String[] CARD_NUM = "A,2,3,4,5,6,7,8,9,10,J,Q,K".split(COMMA); //$NON-NLS-1$
	
	protected 	static final	String[] CARD_NUM_POKER = "A,2,3,4,5,6,7,8,9,1,J,Q,K".split(COMMA); //$NON-NLS-1$

}
