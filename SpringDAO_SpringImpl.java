package config;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;

public class SpringDAO_SpringImpl implements SpringDAO{
	private JdbcTemplate jdbcTemplate = null;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public List<SpringVO> findall() throws Exception {
		// TODO Auto-generated method stub
		RowMapper<SpringVO> rm = new RowMapper<SpringVO>() {
			@Override
			public SpringVO mapRow(ResultSet rs, int idx) throws SQLException {
				SpringVO vo = new SpringVO();
				vo.setNo(rs.getInt("no"));
				vo.setContent(rs.getString("content"));
				return vo;
			}
		};
		
		return jdbcTemplate.query("select * from spring_T",rm);
	}

	@Override
	public int add(SpringVO vo) throws Exception {
		PreparedStatementSetter pss = new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement stmt) throws SQLException {
				stmt.setString(1,vo.getContent());
			}	
		};
		
		int uc = jdbcTemplate.update("insert into spring_T values (default,?)",pss);
		return uc;
	}
	
	@Override
	public int delete(SpringVO vo) throws Exception {
		
		PreparedStatementSetter pss = new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement stmt) throws SQLException {
				stmt.setInt(1, vo.getNo());
			}
		};
		
		int uc = jdbcTemplate.update("delete from spring_T where no=?",pss);
		
		return uc;
	}
}
