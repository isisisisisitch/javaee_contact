package ca.bytetube.dao.impl;

import ca.bytetube.dao.UserDao;
import ca.bytetube.domain.User;
import ca.bytetube.utils.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class UserDaoImpl implements UserDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());


    @Override
    public List<User> findAll() {
        String sql = "select * from user";
        List<User> users = template.query(sql, new BeanPropertyRowMapper<User>(User.class));

        return users;
    }

    @Override
    public void addUser(User user) {
        String sql = "insert into user values(null,?,?,?,?,?,?)";
        template.update(sql,user.getName(),user.getSex(),user.getAge(),user.getAddress(),user.getFacebook(),user.getEmail());
    }

    @Override
    public void delUser(int id) {
        String sql = "delete from user where id = ?";
        template.update(sql,id);
    }

    @Override
    public User findUserById(int id) {
        String sql = "select * from user where id=?";
        User user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), id);
        return user;
    }

    @Override
    public void updateUserInfo(User user) {
        String sql = "update user set name = ? ,age= ?, sex=?,address = ? ,facebook=?,email=? where id =?";
        template.update(sql,user.getName(),user.getAge(),user.getSex(),user.getAddress(),user.getFacebook(),user.getEmail(),user.getId());

    }
}
