package com.ot.utils;


import java.sql.*;
import java.util.*;
import java.io.*;

public class GenerateUpdateQueryByTableName {

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

		    String s="public static final String _UPDATE_"+tableName.toUpperCase()+" = \n";
		          s+= "\t\" Update "+tableName+" SET\"+\n";
						    	    for(int i=1;i<al1.size();){
						    		        s+=" \t\t\" "+al1.get(i)+" = :"+al2.get(i++)+", \"+\n";
						    	     }
						         s+= " \t\t\" version_id = :versionId + 1 \"+ \n \t\t APPSQLConstants._UPDATE_AUDIT_COLUMN + \n";
		   
		         s+="\t\" Where  "+al1.get(0)+" = :"+al2.get(0)+" AND \"+ \n" +
		         		" \t\t \" record_status = 'A' AND version_id = :versionId \";\n";
						    	 
	            System.out.println(s);

	            PrintWriter printer = new PrintWriter("/home/plianto/Desktop/"+"update_"+tableName);
			    printer.write("");
			    printer.write(s);
			    printer.flush();
		
		}
	}
