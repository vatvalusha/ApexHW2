/**
 * Created by valeriyartemenko on 11.04.17.
 */

public with sharing class ContactWrapper {
    public Account account {get; set;}
    public Boolean checked {get; set;}
    public ContactWrapper(Account account, Boolean checked){
        this.account = account;
        this.checked = checked;
    }
}