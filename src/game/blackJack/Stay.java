package game.blackJack;

public class Stay {
	
	
	public boolean stay(){
		
		Deck dc=Deck.getInstance();

		BlackJackBean bj=BlackJackBean.getInstance();

		if(bj.getD2()!=null && dc.getDSum()<17){
			
			return true;
			
		}else{
			
			return false;
		}
	}
}
