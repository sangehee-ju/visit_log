package config;

import java.util.List;

public interface SpringDAO {
	public List<SpringVO> findall() throws Exception;
	public int add(SpringVO vo) throws Exception;
	public int delete(SpringVO vo) throws Exception;
}
