package ca.bytetube.test;

import ca.bytetube.dao.UserDao;
import ca.bytetube.dao.impl.UserDaoImpl;
import ca.bytetube.domain.User;
import org.junit.Test;

import java.util.List;

public class TestUserDao {
    UserDao dao = new UserDaoImpl();

    @Test
    public void testFindAll(){
        List<User> users = dao.findAll();
        System.out.println(users);

    }

}
