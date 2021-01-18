package com.ot.utils;

import java.io.*;
import java.sql.*;
import java.util.*;


public class GenerateSelectQueryByTableName {
	public static void main(String[] args) throws FileNotFoundException, SQLException {
	   List<String> al1=new ArrayList<String>();
	   List<String> al2=new ArrayList<String>();
	   List<String> al3=new ArrayList<String>();
	   Connection con = null;
	   Scanner sc=new Scanner(System.in);
	   System.out.println("Enter table Name: ");
	   String tableName=sc.next();
	   String alias = sc.next();
	   try{  
		   Class.forName(UtilConstants.DRIVER_CLASS_NAME);
		   String IP = UtilConstants.DB_URL;
		   con=DriverManager.getConnection(IP,UtilConstants.DB_UNAME,UtilConstants.DB_PASSWORD);
		   Statement stmt=con.createStatement();  
		  /* ResultSet rs=stmt.executeQuery("select column_name from information_schema.columns where table_name = '"+tableName+"';");*/ 
		   ResultSet rs=stmt.executeQuery("select column_name from information_schema.columns where table_name = '"+tableName+"' and " +
		   		"                          column_name not in('version_id','created_by','created_dt','last_updated_by','last_updated_dt','session_id','record_status');");
		     while(rs.next())  {
			    al1.add(rs.getString(1));
			    String s=rs.getString(1);
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
	    String s= "  public static final String _GET__"+tableName.toUpperCase()+" =  \n";
	          s+="\t\" SELECT "+""+"(\"+\n";
					          if(al1.size()%2==0){
					    	    for(int i=0;i<al1.size();){
					    	    	if(i==al1.size()-2)
					  	    		  /*s+="\t\t\""+al1.get(i++)+", "+al1.get(i++)+" )\"+\n";*/
					    	    		s+="\t\t\" "+alias+"."+al1.get(i++)+", "+alias+"."+al1.get(i++); //+" \"+\n  \t\t APPSQLConstants._INSERT_AUDIT_COLUMN + \")\" +\n";
					    	    	else{
					    		        s+="\t\t\" "+alias+"."+al1.get(i++)+", "+alias+"."+al1.get(i++)+", \"+\n";
					    	    	   }
					    	     }
					    	  }else{
					    		  for(int i=0;i<al1.size();){
						    	    	if(i==al1.size()-1)
						  	    		  s+="\t\t\" "+alias+"."+al1.get(i++);//+" \"+\n \t\t APPSQLConstants._INSERT_AUDIT_COLUMN + \")\" +\n";
						    	    	else{
						    		        s+="\t\t\" "+alias+"."+al1.get(i++)+", "+alias+"."+al1.get(i++)+", \"+\n";
						    	    	   }
						    	     }
					    	  }
					          
					          s +="\n FROM "+tableName+" \n where "+alias+".record_status = 'A'";
	   
	         /*s+="\t\" Values(\"+\n";
						      if(al2.size()%2==0){
					    	    for(int i=0;i<al2.size();){
					    	    	if(i==al2.size()-2)
					  	    		  s+="\t\t\" :"+al2.get(i++)+", :"+al2.get(i++)+" ) \";\n";
					    	    		s+="\t\t\" :"+al2.get(i++)+", :"+al2.get(i++)+" \"+\n \t\t APPSQLConstants._INSERT_AUDIT_COLUMN_PARAM + \")\"; \n";
					    	    	
					    	    	
					    	    	else{
					    		        s+="\t\t\" :"+al2.get(i++)+", :"+al2.get(i++)+", \"+\n";
					    	    	   }
					    	     }
					    	  }else{
					    		  for(int i=0;i<al2.size();){
						    	    	if(i==al2.size()-1)
						  	    		  s+="\t\t\" :"+al2.get(i++)+" \"+\n \t\t APPSQLConstants._INSERT_AUDIT_COLUMN_PARAM + \")\"; \n";
						    	    	else{
						    		        s+="\t\t\" :"+al2.get(i++)+", :"+al2.get(i++)+", \"+\n";
						    	    	   }
						    	     }
					    	  }*/
            System.out.println(s);

            PrintWriter printer = new PrintWriter("/home/plianto/Desktop/"+"insert_"+tableName);
		    printer.write("");
		    printer.write(s);
		    printer.flush();
		    
		    
            
	
	}
}
