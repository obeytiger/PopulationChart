package com.marsai.charts;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.marsai.charts.resources.LearnResource;
import com.marsai.charts.resources.UserService;


/**  
 * ClassName:StudentController 
 * Date:     2018年9月6日 下午4:27:40
 * @author   Mars  
 * @version    
 * @since    JDK 1.8
 */
@Controller
public class StudentController {
	
	@Autowired
	private UserService userService;

    /**
     * view:(跳转到JSP界面).  
     * @author Mars
     * Date:2018年9月6日下午4:29:27
     *
     * @param map
     * @return
     */
    @RequestMapping(value = {"/", "/view"})
    public String view(Map<String, Object> map) {
        map.put("name", "SpringBoot");
        map.put("date", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        return "index";
    }
    
    @RequestMapping(value = {"/population"})
    public ModelAndView population(HttpServletRequest request, HttpServletResponse response) {
    	
    	//String thePercent2 = userService.getPercent2("2016");
    	
        ModelAndView modelAndView = new ModelAndView();
        //modelAndView.addObject("percent1", thePercent1);
        //modelAndView.addObject("percent2", thePercent2);
        int initYear = 2003;
        int thisYear = 2018;
        modelAndView.addObject("selectedIndexYear", ""+(thisYear-initYear));
        modelAndView.addObject("firstVisitFlag", "Y");
        
        String totalAmount = userService.getTotalAmount();
        totalAmount = totalAmount.substring(1);
        modelAndView.addObject("totalAmount", totalAmount);
        
        modelAndView.setViewName("population");
        return modelAndView;
    }
    
    @ResponseBody
    @RequestMapping(value = "/chooseYear", method = RequestMethod.POST)
    public ModelAndView chooseYear(HttpServletRequest request, HttpServletResponse response) {
    	
    	String theYear = request.getParameter("theYear");
    	
        int initYear = 2003;
        int selectedYear = Integer.parseInt(theYear);
        
    	List allPercent = userService.getAllPercent(theYear);
    	

    	
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("firstVisitFlag", "N");
        
    	if(allPercent == null || allPercent.size() == 0) {

    		modelAndView.addObject("percent1", "0");
    		modelAndView.addObject("percent2", "0");
    		modelAndView.addObject("percent3", "0");
    		modelAndView.addObject("percent4", "0");
    		modelAndView.addObject("percent5", "0");
    		modelAndView.addObject("percent6", "0");
    		modelAndView.addObject("percent7", "0");
    		modelAndView.addObject("percent8", "0");
    		modelAndView.addObject("percent9", "0");
    		modelAndView.addObject("percent10", "0");
    		modelAndView.addObject("percent11", "0");
    		modelAndView.addObject("percent12", "0");
    		modelAndView.addObject("percent13", "0");
    		modelAndView.addObject("percent14", "0");
    		modelAndView.addObject("percent15", "0");
    		
            modelAndView.addObject("selectedIndexYear", ""+(selectedYear-initYear));
            modelAndView.setViewName("population");
            return modelAndView;
    	}
        //modelAndView.addObject("percent1", thePercent1);
        modelAndView.addObject("percent1", "" + (Double.parseDouble((String)allPercent.get(0)) * 100 / 12));
        modelAndView.addObject("percent2", "" + (Double.parseDouble((String)allPercent.get(1)) * 100 / 12));
        modelAndView.addObject("percent3", "" + (Double.parseDouble((String)allPercent.get(2)) * 100 / 12));
        modelAndView.addObject("percent4", "" + (Double.parseDouble((String)allPercent.get(3)) * 100 / 12));
        modelAndView.addObject("percent5", "" + (Double.parseDouble((String)allPercent.get(4)) * 100 / 12));
        modelAndView.addObject("percent6", "" + (Double.parseDouble((String)allPercent.get(5)) * 100 / 12));
        modelAndView.addObject("percent7", "" + (Double.parseDouble((String)allPercent.get(6)) * 100 / 12));
        modelAndView.addObject("percent8", "" + (Double.parseDouble((String)allPercent.get(7)) * 100 / 12));
        modelAndView.addObject("percent9", "" + (Double.parseDouble((String)allPercent.get(8)) * 100 / 12));
        modelAndView.addObject("percent10", "" + (Double.parseDouble((String)allPercent.get(9)) * 100 / 12));
        modelAndView.addObject("percent11", "" + (Double.parseDouble((String)allPercent.get(10)) * 100 / 12));
        modelAndView.addObject("percent12", "" + (Double.parseDouble((String)allPercent.get(11)) * 100 / 12));
        modelAndView.addObject("percent13", "" + (Double.parseDouble((String)allPercent.get(12)) * 100 / 12));
        modelAndView.addObject("percent14", "" + (Double.parseDouble((String)allPercent.get(13)) * 100 / 12));
        modelAndView.addObject("percent15", "" + (Double.parseDouble((String)allPercent.get(14)) * 100 / 12));

        modelAndView.addObject("selectedIndexYear", ""+(selectedYear-initYear));

        modelAndView.setViewName("population");
        
        
		PrintWriter out;
		try {
			out = response.getWriter();
			String ret = "";
			for(int i = 0; i < 15; i++) {
				ret = ret + "|" + (Double.parseDouble((String)allPercent.get(i)) * 100 / 12);
			}
			ret = ret.substring(1);
			out.write(ret);
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        
        return modelAndView;
    }
    
    
    
    @RequestMapping(value = {"/learn"})
    public ModelAndView index(){
        List<LearnResource> learnList =new ArrayList<LearnResource>();
        LearnResource bean =new LearnResource("官方参考文档","Spring Boot Reference Guide","http://docs.spring.io/spring-boot/docs/1.5.1.RELEASE/reference/htmlsingle/#getting-started-first-application");
        learnList.add(bean);
        bean =new LearnResource("官方SpriongBoot例子","官方SpriongBoot例子","https://github.com/spring-projects/spring-boot/tree/master/spring-boot-samples");
        learnList.add(bean);
        bean =new LearnResource("龙国学院","Spring Boot 教程系列学习","http://www.roncoo.com/article/detail/125488");
        learnList.add(bean);
        bean =new LearnResource("嘟嘟MD独立博客","Spring Boot干货系列 ","http://tengj.top/");
        learnList.add(bean);
        bean =new LearnResource("后端编程嘟","Spring Boot教程和视频 ","http://www.toutiao.com/m1559096720023553/");
        learnList.add(bean);
        bean =new LearnResource("程序猿DD","Spring Boot系列","http://www.roncoo.com/article/detail/125488");
        learnList.add(bean);
        bean =new LearnResource("纯洁的微笑","Sping Boot系列文章","http://www.ityouknow.com/spring-boot");
        learnList.add(bean);
        bean =new LearnResource("CSDN——小当博客专栏","Sping Boot学习","http://blog.csdn.net/column/details/spring-boot.html");
        learnList.add(bean);
        bean =new LearnResource("梁桂钊的博客","Spring Boot 揭秘与实战","http://blog.csdn.net/column/details/spring-boot.html");
        learnList.add(bean);
        bean =new LearnResource("林祥纤博客系列","从零开始学Spring Boot ","http://412887952-qq-com.iteye.com/category/356333");
        learnList.add(bean);
        //ModelAndView modelAndView = new ModelAndView("/index");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("learnList", learnList);
        modelAndView.setViewName("learn");
        return modelAndView;
    }
}