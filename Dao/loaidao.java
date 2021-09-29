package Dao;

import java.util.ArrayList;

import Bean.loaibean;

public class loaidao {
	public ArrayList<loaibean> getloai(){
    	ArrayList<loaibean> ds= new ArrayList<loaibean>();
    	ds.add(new loaibean("cntt", "Công nghệ thông tin"));
    	ds.add(new loaibean("kt", "Kinh te"));
    	ds.add(new loaibean("vh", "Văn học"));
    	ds.add(new loaibean("luat", "Sách luật kinh tế"));
    	return ds;
    }
}
