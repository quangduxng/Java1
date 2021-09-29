package Dao;

import java.util.ArrayList;

import Bean.SinhVienbean;

public class SinhViendao {
	public ArrayList<SinhVienbean> getSv(){
		ArrayList<SinhVienbean> ds = new ArrayList<SinhVienbean>();
		 ds.add(new SinhVienbean("Sv1", "Nguyễn Nam Hải 1", 7.5, "K42A"));
    	 ds.add(new SinhVienbean("Sv2", "Hồ Quang Dũng", 7.5, "K42A"));
    	 ds.add(new SinhVienbean("Sv3", "Lê Văn a", 7.5, "K42A"));
    	 ds.add(new SinhVienbean("Sv4", "Nguyễn Văn B", 7.5, "K42B"));
    	 ds.add(new SinhVienbean("Sv5", "Nguyễn Quang Dũng", 7.5, "K42B"));
    	 ds.add(new SinhVienbean("Sv6", "Nguyễn Công Sơn", 7.5, "K42C"));
    	 ds.add(new SinhVienbean("Sv7", "Nguyễn Ngọc  Phúc", 7.5, "K42D"));
    	 ds.add(new SinhVienbean("Sv8", "Mai Nam Hải ", 7.5, "K42D"));
		
		
		return ds;
		
	}
}
