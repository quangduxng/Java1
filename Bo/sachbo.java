package Bo;

import java.util.ArrayList;

import Bean.Lopbean;
import Bean.SinhVienbean;
import Bean.loaibean;
import Bean.sachbean;
import Dao.sachdao;

public class sachbo {
	
	sachdao sdao = new sachdao();
	
	public ArrayList<sachbean> getsach(){
		return sdao.getsach();
	}
	public ArrayList<sachbean> TimLoai(ArrayList<sachbean> ds, String maloai){
		ArrayList<sachbean> temp = new ArrayList<sachbean>();
		for(sachbean sach: ds)
			if(sach.getMaloai().equals(maloai))
				temp.add(sach);
		return temp;	
	}
	public ArrayList<sachbean> Tim(ArrayList<sachbean> ds,String key){
   	 ArrayList<sachbean> tam= new ArrayList<sachbean>();
   	 for(sachbean s: ds)
   		 if(s.getTensach().toLowerCase().contains(key.toLowerCase()) ||
   				 s.getTacgia().toLowerCase().contains(key.toLowerCase()))
   			   tam.add(s);
   	 return tam;
    }
	
	public int DemLoai(ArrayList<sachbean> ds,String maloai){
    	int d=0;
    	 for(sachbean s: ds)
    		 if(s.getMaloai().equals(maloai))
    			d++;
    	 return d;
     }
		
	}


