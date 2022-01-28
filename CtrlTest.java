package config;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CtrlTest {
	
	private SpringDAO springDao = null;

	public SpringDAO getSpringDao() {
		return springDao;
	}

	public void setSpringDao(SpringDAO springDao) {
		this.springDao = springDao;
	}
	
	//설정 테스트 
	@ResponseBody
	@RequestMapping("ping.pknu")
	public String ping() throws Exception{
		return springDao.toString();
	}
	
	//목록 
	@RequestMapping("list.pknu")
	public ModelAndView list() throws Exception{
		ModelAndView mnv = new ModelAndView();
		mnv.setViewName("view_list");
		mnv.addObject("list",springDao.findall());
		return mnv;
	}
	
	// 입력사항 추가
	@RequestMapping("add.pknu")
	public String add(final @ModelAttribute SpringVO vo, HttpSession session) throws Exception{
		springDao.add(vo);
		return "redirect:list.pknu";
	}
	
	// 삭제 함수
	@RequestMapping("delete.pknu")
	public String del(final @ModelAttribute SpringVO vo, HttpSession session) throws Exception{
		
		springDao.delete(vo);
		
		return "redirect:list.pknu";
	}
}
