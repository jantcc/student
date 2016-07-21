package service;

/**
 * Created by Administrator on 2016/7/13.
 */
import model.student;

import java.util.List;

public interface studentService {
    public List<student> queryAllStudent();
    public int updateByID(student stu);
    public int deleteByID(Integer id);
    public int insert(student stu);
    public student selectByID(Integer id);
    public int countStudent();
    public List<student> pagequeryStudent(Integer pageNow);
}
