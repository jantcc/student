package service.impl;

/**
 * Created by Administrator on 2016/7/13.
 */

import dao.studentDao;
import model.student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import service.studentService;

import javax.annotation.Resource;
import javax.annotation.Resources;
import java.util.List;

@Service("stuService")
public class studentServiceImpl implements studentService {
    @Autowired
    private  studentDao stuDao;
    public void setStuDao(studentDao stuDao) {
        this.stuDao = stuDao;
    }
    public studentDao getStuDao() {
        return stuDao;
    }
    public List<student> queryAllStudent(){
        return this.stuDao.queryAllStudent();
     }
    public int updateByID(student stu) {
        return this.stuDao.updateByPrimaryKey(stu);
    }
    public int deleteByID(Integer id) {
        return this.stuDao.deleteByPrimaryKey(id);
    }
    public int insert(student stu){
        return this.stuDao.insert(stu);
    }
    public student selectByID(Integer id){return this.stuDao.selectByPrimaryKey(id);}
    public int countStudent(){return this.stuDao.countByPrimaryKey();}
    public List<student> pagequeryStudent(Integer pageNow){return this.stuDao.pagequeryStudent(pageNow);};
}
