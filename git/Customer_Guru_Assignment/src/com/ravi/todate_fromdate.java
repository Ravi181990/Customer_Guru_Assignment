package com.ravi;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;  
import java.util.Date;
import java.util.Locale;  

public class todate_fromdate {
	
	public static void date(String todate,String fromdate)
	{
		try {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd", Locale.US); 
		LocalDate date = LocalDate.parse(todate, dateFormat);
		LocalDate date1 = LocalDate.parse(fromdate, dateFormat);
	    LocalDate enddate = date1.withDayOfMonth(date1.getMonth().minLength());

		LocalDate firstdate = date.withDayOfMonth(1);
		LocalDate currentdate = LocalDate.now();
		 Calendar now = Calendar.getInstance();
		 
		 Calendar now1 = Calendar.getInstance();
	       now.get(now.get(Calendar.MONTH) + 1);      
	       	Date parse = sdf.parse(fromdate);
	       	now1.setTime(parse);
	       	
	       	int currentmonth =now.get(Calendar.MONTH) + 1;
	       	
	       	int frommonth=now1.get(Calendar.MONTH)+1;
	       	
	       	if(currentmonth <= frommonth) 
	       	{
	       		
	       		System.out.println(firstdate);	
	       		System.out.println(currentdate);
	       	}
	       
	       	else
	       	{
	       		System.out.println(firstdate);	
	       		System.out.println(enddate);
	       	}
	       		
			
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		
		
	}
	
	public static void main(String[] args) {
		    String todate="2018-01-26";
		    String fromdate="2018-02-03";
		    date(todate,fromdate);
		    
		
	}

}
