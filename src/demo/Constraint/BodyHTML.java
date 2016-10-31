package demo.Constraint;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.jsp.JspWriter;;

public class BodyHTML implements Constant{
	public static final int ACTOR_SV=1;
	public static final int ACTOR_GV=2;
	public static final int ACTOR_TK=3;
	public static final int ACTOR_CT=4;
	public static final int ACTOR_GUEST=5;
	
	
	/*LEFT MENU*/
	public static void outLeftMenu(JspWriter stream,String namePage,int actor){
		try{
			
			stream.println("<div id='left-content'>");
			stream.println("<div class='col-md-3'> "); 
			stream.println("<div id='desktop-menu'>");  
			stream.println("<div class='panel panel-default'>");     
			stream.println("<div class='panel-heading'>");       
			stream.println("<h4 id='mobile_home'>Danh Mục</h4>");  
			
			outMenuItem(stream, namePage,actor);

			
			
			stream.println("</div>");       
			stream.println("</div><!-- /panel-default -->");   
			stream.println("</div><!--desktop menu-->");  
			stream.println("</div><!--colmd 3-->"); 
			stream.println("</div>"); 

			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
	private static void outMenuItem(JspWriter stream,String namePage,int actor) throws IOException {

		String[][] matrix = null;
		switch(actor){
			case ACTOR_SV:matrix=MATRIX_SV;break;
			case ACTOR_GV:matrix=MATRIX_GV;break;
			case ACTOR_TK:matrix=MATRIX_TK;break;
			case ACTOR_CT:matrix=MATRIX_CT;break;
			case ACTOR_GUEST:matrix=MATRIX_G;break;
			default:break;
		}
						 
		int rowLen=matrix.length;
		
		for(int i=0;i<rowLen;i++){
			if(namePage.equals(matrix[i][2])){
				stream.println("<a href='"+matrix[i][0]+"' class='list-group-item active'><span class='pull-right '><i class='icon-chevron-right'></i></span>"+matrix[i][1]+"</a>");     
			}else{
				stream.println("<a href='"+matrix[i][0]+"' class='list-group-item '><span class='pull-right '><i class='icon-chevron-right'></i></span>"+matrix[i][1]+"</a>");     
			}
			      
		}
	}

	public static String getDate(){
		Date curDate=new Date();
		
		return curDate.getHours()+ " Giờ "+curDate.getMinutes() +" phút, Ngày "+ curDate.getDate() 
				+" tháng " +curDate.getMonth() +" năm "+ (curDate.getYear()+1900);

	}
}

















