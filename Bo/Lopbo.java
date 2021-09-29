package Bo;

import java.util.ArrayList;

import Bean.Lopbean;
import Dao.Lopdao;

public class Lopbo {

	Lopdao ldao= new Lopdao();
	   public ArrayList<Lopbean> getlop(){
		return ldao.getlop();
	   }
	
}
