/**
 * Created by valeriyartemenko on 31.03.17.
 */

public with sharing class TestCon {
    String uname;

    public String getUsername() {
        return uname;
    }

    public PageReference sayHello() {
        uname = UserInfo.getName();
        return null;
    }

    public void setState(String n) {
        state = n;
    }

    public String getState() {
        return state;
    }

    public PageReference methodOne() {
        return null;
    }

    private String state = 'no';

}