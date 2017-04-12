/**
 * Created by valeriyartemenko on 11.04.17.
 */

public with sharing class ViewController {
    public String selVal {get;set;}
    public List<ContactWrapper> contactsWrapper {get; set;}
    public list <SelectOption > AllAccount {get;set;}
//    public list <Contact > dltcontacts {get;set;}
    public list <Account > dltcontacts {get;set;}
    public Boolean render{get;set;}
//    public ApexPages.StandardController controller;

    public ViewController(ApexPages.StandardController controller) {
//        this.controller = controller;
        AllAccount = new list <SelectOption>();
        list <Account> acnts = [select id, name, Test__c from Account];
        for (Account account: acnts) {
            AllAccount.add(new SelectOption(account.id, account.Name));
        }
    }
    public void showRelatedContacts(){
        for(Account account : [select  id, name from Account  where   id=:selVal]){
            contactsWrapper.add(new ContactWrapper(account,false));
        }
//        changeRender();
    }
    public void DeleteChecked(){
        dltcontacts = new list<Account>();
        for(ContactWrapper cc: contactsWrapper){
            if(cc.checked){
                dltcontacts.add(cc.account);
            }
        }
        delete dltcontacts;
    }

    public void changeRender(){
        if(render == true)
            render= false;
        else render = true;
    }
}