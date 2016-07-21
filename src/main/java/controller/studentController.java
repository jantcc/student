package controller;

import model.student;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.runtime.RuntimeConstants;
import org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.studentService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2016/7/13.
 */
@Controller
@RequestMapping("/studentController")
public class studentController {
    @Autowired
    private studentService stuService;
    public studentService getStuService() {
        return stuService;
    }
    @RequestMapping("queryAll")
    public String queryAllstudent(HttpServletRequest request, ModelMap ctx){
        List<student> list = this.stuService.queryAllStudent();
        ctx.put("list",list);
        return "student_info.vm";
    }
    @RequestMapping("pageQuery")
    public String pageQuery( HttpServletRequest request,ModelMap ctx){
        int page=0;
        int pagesize=5;
        int Allrecords = this.stuService.countStudent();
        if(Allrecords%5==0) {page=Allrecords/pagesize;}
        else {page=(Allrecords/pagesize)+1;}
        ctx.put("page",page);
        ctx.put("Allrecords",Allrecords);
        //设置每页显示5条数据
        String tempstr = request.getParameter("pageNow");
        if (tempstr==null) tempstr="1";
        int temp_pageNow = Integer.parseInt(tempstr);
        int pageNow = (temp_pageNow-1)*5;
        List<student> list = this.stuService.pagequeryStudent(pageNow);
        ctx.put("list",list);
        return "student_info.vm";
    }
    @RequestMapping("update")
    public String updateStudent(student stu){
        this.stuService.updateByID(stu);
        return "index.jsp";
    }
    @RequestMapping("delete")
    public String deteleStudent(HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("ID"));
        this.stuService.deleteByID(id);
        return "index.jsp";
    }
    @RequestMapping("add")
    public String addStudent(student stu){
        this.stuService.insert(stu);
        return "index.jsp";
    }
    @RequestMapping("selectById")
    public String selectByID(HttpServletRequest request,ModelMap ctx){
        int id = Integer.parseInt(request.getParameter("studentid"));
        student stu = this.stuService.selectByID(id);
        ctx.put("student",stu);
        return "student.vm";
    }
}
