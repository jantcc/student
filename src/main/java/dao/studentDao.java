package dao;

import model.student;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface studentDao {
    int deleteByPrimaryKey(Integer id);

    int insert(student record);

    int insertSelective(student record);

    student selectByPrimaryKey(Integer id);

    List<student> queryAllStudent();

    int updateByPrimaryKeySelective(student record);

    int updateByPrimaryKey(student record);
    int countByPrimaryKey();
    List<student> pagequeryStudent(Integer pageNow);
}