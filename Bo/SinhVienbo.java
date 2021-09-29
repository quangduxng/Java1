package Bo;

import java.util.ArrayList;

import Bean.SinhVienbean;
import Dao.SinhViendao;

public class SinhVienbo {
	SinhViendao svdao = new SinhViendao();
	public ArrayList<SinhVienbean> getSv(){
		return svdao.getSv();
		
	}
	
	public ArrayList<SinhVienbean> TimMalop(ArrayList<SinhVienbean> ds, String malop){
    	ArrayList<SinhVienbean> tam= new ArrayList<SinhVienbean>();
    	for(SinhVienbean sv: ds)
    		if(sv.getMalop().equals(malop))
    			tam.add(sv);
    	return tam;
 	
    }
	public ArrayList<SinhVienbean> Tim(ArrayList<SinhVienbean> ds, String key){
    	ArrayList<SinhVienbean> tam= new ArrayList<SinhVienbean>();
    	for(SinhVienbean sv: ds)
    		if(sv.getMalop().contains(key)||sv.getHoten().toLowerCase().contains(key.toLowerCase()))
    			tam.add(sv);
    	return tam;
 	
    }
}
