package Bo;

import java.util.ArrayList;

import Bean.Lopbean;
import Bean.loaibean;
import Bean.sachbean;
import Dao.loaidao;
import Dao.sachdao;

public class loaibo {

	loaidao  ldao = new loaidao();
	 public ArrayList<loaibean> getloai(){
			return ldao.getloai();
		   }
}
