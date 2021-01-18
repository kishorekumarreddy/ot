package com.ot.utils;

import java.io.*;
import java.sql.*;
import java.util.*;

public class GeneratePOJOClassByTableName {
	public static void main(String[] args) throws FileNotFoundException, SQLException {
	   List<String> al1=new ArrayList<String>();
	   List<String> al2=new ArrayList<String>();
	   List<String> al3=new ArrayList<String>();
	   Connection con = null;
	   Scanner sc=new Scanner(System.in);
	   System.out.println("Enter table Name: ");
	   String tableName=sc.next();
	   try{  
		   Class.forName(UtilConstants.DRIVER_CLASS_NAME);
		   String IP = UtilConstants.DB_URL;
		   con=DriverManager.getConnection(IP,UtilConstants.DB_UNAME,UtilConstants.DB_PASSWORD);
		   Statement stmt=con.createStatement();  
		   ResultSet rs=stmt.executeQuery("select data_type,column_name from information_schema.columns where table_name = '"+tableName+"' and " +
		   		"                          column_name not in('version_id','created_by','created_dt','last_updated_by','last_updated_dt','session_id','record_status');"); 
		     while(rs.next())  {
			    al1.add(rs.getString(1));
			    String s=rs.getString(2);
			    String s1="";
	             for(int i=0; i<s.length();i++){
	              if(s.charAt(i)=='_'){
	                  s1+=Character.toUpperCase(s.charAt(i+1))+"";
	                  i=i+1;		                
	                }else{
	                  s1+=s.charAt(i)+"";
	                }
	             }
		        al2.add(s1);  
		        } 
	       }
		catch(Exception e){{ System.out.println(e);} }
	        finally{con.close();}
	  
	    ListIterator<String> iterator1 = al1.listIterator();
	    while (iterator1.hasNext()){
	        iterator1.set(iterator1.next().toLowerCase());
	    }
	   
	    
	    
	    String tName="";
	    String tableNameSubString1 = tableName.substring(1);
        for(int i=0; i<tableNameSubString1.length();i++){
         if(tableNameSubString1.charAt(i)=='_'){
        	 tName+=Character.toUpperCase(tableNameSubString1.charAt(i+1))+"";
             i=i+1;		                
           }else{
        	   tName+=tableNameSubString1.charAt(i)+"";
           }
        }
	    
		String s = "/* Enter Package Name Here */\n"+
				"import java.io.*;\n" +
				"import java.util.*;\n\n" +
				"import com.plianto.vo.commons.AppBaseVO;\n\n" +

				"public class "+Character.toUpperCase(tableName.charAt(0))+""+tName+" extends AppBaseVO{ "+"\n";
		   
		    for(int i=0;i<al1.size();i++){
			   if(al1.get(i).contains("char")){
				   al3.add("String");
				   s+="\t"+"private "+al3.get(i)+" "+al2.get(i)+";\n";
			   }
			   else if(al1.get(i).contains("int")){
				   al3.add("Integer");
				   s+="\t"+"private "+al3.get(i)+" "+al2.get(i)+";\n";
			   }
			   else if(al1.get(i).contains("boolean")){
				   al3.add("Boolean");
				   s+="\t"+"private "+al3.get(i)+" "+al2.get(i)+";\n";
			   }
			   else if(al1.get(i).contains("double")){
				   al3.add("Double");
				   s+="\t"+"private "+al3.get(i)+" "+al2.get(i)+";\n";
			   }
			   else if(al1.get(i).contains("long")){
				   al3.add("Long");
				   s+="\t"+"private "+al3.get(i)+" "+al2.get(i)+";\n";
			   }
			   else if(al1.get(i).contains("float")){
				   al3.add("Float");
				   s+="\t"+"private "+al3.get(i)+" "+al2.get(i)+";\n";
			   }
			   else if(al1.get(i).contains("date")){
				   al3.add("Date");
				   s+="\t"+"private "+al3.get(i)+" "+al2.get(i)+";\n";
			   }
			   else if(al1.get(i).contains("timestamp")){
				   al3.add("Timestamp");
				   s+="\t"+"private "+al3.get(i)+" "+al2.get(i)+";\n";
			   }
			   else if(al1.get(i).contains("numeric")){
				   al3.add("BigDecimal");
				   s+="\t"+"private "+al3.get(i)+" "+al2.get(i)+";\n";
			   }
			   else if(al1.get(i).contains("array")){
				   al3.add("String[]");
				   s+="\t"+"private "+al3.get(i)+" "+al2.get(i)+";\n";
			   }
			   else if(al1.get(i).contains("serial")){
				   al3.add("Integer");
				   s+="\t"+"private "+al3.get(i)+" "+al2.get(i)+";\n";
			   }
			   else if(al1.get(i).contains("blob")){
				   al3.add("Blob");
				   s+="\t"+"private "+al3.get(i)+" "+al2.get(i)+";\n";
			   }
			   else{
				   al3.add(al1.get(i));
				   s+="\t"+"private "+al1.get(i)+" "+al2.get(i)+";\n";  
			   }
		     }
		    
		    for(int i=0;i<al1.size();i++){
		       s+="\n      public void set"+Character.toUpperCase(al2.get(i).charAt(0))+""+al2.get(i).substring(1)+"("+al3.get(i)+" "+al2.get(i)+") {\n"  +
		            "\t  this."+al2.get(i)+"="+al2.get(i)+";\n"+"\t}\n";
		       s+="\n      public "+al3.get(i)+" get"+Character.toUpperCase(al2.get(i).charAt(0))+""+al2.get(i).substring(1)+"() {\n"  +
			            "\t  return "+al2.get(i)+";\n"+"\t}\n";
		    }
		    
		    s+="}";
		    System.out.println(s);
		    PrintWriter printer = new PrintWriter("/home/plianto/Desktop/"+Character.toUpperCase(tableName.charAt(0))+""+tName+".java");
		    printer.write("");
		    printer.write(s);
		    printer.flush();
	}
}
