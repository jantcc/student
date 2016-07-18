package dao;

import model.student;

import java.util.List;

public interface studentDao {
    int deleteByPrimaryKey(Integer id);

    int insert(student record);

    int insertSelective(student record);

    student selectByPrimaryKey(Integer id);

    List<student> queryAllStudent();

    int updateByPrimaryKeySelective(student record);

    int updateByPrimaryKey(student record);
}