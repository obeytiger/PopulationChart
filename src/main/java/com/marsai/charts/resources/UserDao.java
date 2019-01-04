package com.marsai.charts.resources;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class UserDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;


	
	public int isAdmin(String id) {
		String sql = "SELECT count(*) FROM t_admin_staff WHERE user_id = ?";
		int count = jdbcTemplate.queryForObject(sql, new Object[] { id }, Integer.class);
		return count;
	}
	

	
	
	public String getPercent1(final String year) {
		String sql = "SELECT percentage FROM population WHERE year = ? and age = '0-4'";
		String ret = jdbcTemplate.queryForObject(sql, new Object[] { year }, String.class);
		return ret;
	}
	
	public String getPercent2(final String year) {
		String sql = "SELECT percentage FROM population WHERE year = ? and age = '5-9'";
		String ret = jdbcTemplate.queryForObject(sql, new Object[] { year }, String.class);
		return ret;
	}
	
	public List<String> getAllPercent(final String year) {
		String sql = "SELECT * FROM population WHERE year = ? order by age";
		//String ret = jdbcTemplate.queryForObject(sql, new Object[] { year }, String.class);
		//List result = jdbcTemplate.queryForList(sql, String.class);
		List result = jdbcTemplate.queryForList(sql,  new Object[] { year });
		Iterator it = result.iterator();
		
		List<String> retValues = new ArrayList<String>();
		while (it.hasNext()) {
			Map userMap = (Map) it.next();
			retValues.add((String)userMap.get("percentage"));
		}
		return retValues;
	}
	
	public String getTotalAmount() {
		String sql = "SELECT * FROM totalamount order by year";
		//String ret = jdbcTemplate.queryForObject(sql, new Object[] { year }, String.class);
		//List result = jdbcTemplate.queryForList(sql, String.class);
		List result = jdbcTemplate.queryForList(sql);
		Iterator it = result.iterator();
		
		//List<String> retValues = new ArrayList<String>();
		String retValues = "";
		while (it.hasNext()) {
			Map userMap = (Map) it.next();
			retValues = retValues + "|" + (String)userMap.get("totalamt");
		}
		return retValues;
	}
	
}
