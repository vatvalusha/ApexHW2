/**
 * Created by valeriyartemenko on 11.04.17.
 */

public with sharing class controllerClassOtherVariant {
//    public List<aAccount> accountList {get; set;}
    public List<Account> accountsTest{get;set;}
    public Boolean selected{get;set;}

    public List<Account> getAccounts() {
        accountsTest = [select Id, Name, Test__c from Account  limit 20];
        return accountsTest;
    }


    public void processSelected() {
        upsert  accountsTest;
        List<Account> accounts = [SELECT name from Account where Test__c = true];
//        delete accounts;
    }
//    public PageReference pageReference(){
//        List<Account> selectedContacts = new List<Account>();
//        for(aAccount aAccount: getAccounts()) {
//            if(aAccount.selected == true) {
//                aAccount.account.Test__c = 'Uncheked';
//            }
//        }
//
//    }

//    public class aAccount  {
//        public Account account { get; set; }
//        public Boolean selected { get; set; }
//
//        public aAccount(Account c) {
//            account = c;
//            selected = false;
//        }
//    }

}