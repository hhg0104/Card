package game.blackJack;

public class DealerCheck {

	public boolean dCheck() {
		
		Deck dc = Deck.getInstance();
		
		if (dc.getDSum() < 17) {
			return true;

		} else {
			return false;
		}
	}
}
