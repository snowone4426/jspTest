package jdbc;

import java.sql.*;
import utill.DBUtil;
import java.util.Vector;

public class JDBCstudy {
	private Connection conn = null;
	private Statement stmt = null;
	
	public JDBCstudy () {
		try {
			conn = DBUtil.getConnection("scott","tiger");
			stmt = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Vector<Vector<String>> select (String table, String[] keyArr) {
		Vector<Vector<String>> result= new Vector<>();
		ResultSet rs;
		
		try {
			String str = "SELECT ";
			
			for (String x:keyArr) {
				str += x + ",";
			}
			
			str = str.substring(0,str.length()-1);
			str += " FROM " + table;
			rs = stmt.executeQuery(str);
			
			while (rs.next()) {
				Vector<String> strArr = new Vector<>();
				for (String x:keyArr) {
					strArr.add(rs.getString(x));
				}
				result.add(strArr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public Boolean add (String table, String[] valueArr) {
		try {
			String str = "INSERT INTO " + table + " VALUES (";
			
			for (String x: valueArr) {
				str += "'"+x + "',";
			}
			
			str = str.substring(0,str.length()-1);
			str += ")";
			
			stmt.executeUpdate(str);
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

		return true;
	}
	
	public Boolean delete (String table, String id) {
		try {
			String str = "DELETE FROM "+ table + " WHERE id='" + id+ "'";
			
			stmt.executeUpdate(str);
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
		return true;
		
	}
	
	public Boolean update (String table, String id, String[] keyArr, String[] valueArr) {
		try {
			String str = "UPDATE " + table + " SET ";
			
			for (int i = 0; i < keyArr.length; i++) {
				str += keyArr[i] + " = '" + valueArr[i] + "',";
			}
			str = str.substring(0,str.length()-1);
			str += " WHERE id = '" + id + "'";
			stmt.executeUpdate(str);
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}
}
