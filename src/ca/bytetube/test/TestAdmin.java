package ca.bytetube.test;

import ca.bytetube.domain.Admin;
import ca.bytetube.service.UserService;
import ca.bytetube.service.impl.UserServiceImpl;

public class TestAdmin {
    public static void testAdmin(){
        Admin admin = new Admin();
        admin.setUsername("bytetube");
        admin.setPassword("11111");
        UserService service = new UserServiceImpl();
        Admin adminLogin = service.adminLogin(admin);
        System.out.println(adminLogin);
    }

    public static void main(String[] args) {
        testAdmin();
    }
}
