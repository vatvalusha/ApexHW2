/**
 * Created by valeriyartemenko on 11.04.17.
 */

public with sharing class wrapperClassController {
//    public List<cContact> contactList {get; set;}
    public List<aAccount> accountList {get; set;}

    public List<aAccount> getAccounts() {
        if(accountList == null) {
            accountList = new List<aAccount>();
            for(Account c: [select Id, Name, Phone, Test__c from Account limit 100]) {
                accountList.add(new aAccount(c));
            }
        }
        return accountList;
    }

    public PageReference processSelected() {
        List<Account> selectedContacts = new List<Account>();
        for(aAccount aAccount: getAccounts()) {
            if(aAccount.selected == true) {
                selectedContacts.add(aAccount.account);
            }
        }
        delete  selectedContacts;
        return null;
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

    public class aAccount  {
        public Account account { get; set; }
        public Boolean selected { get; set; }

        public aAccount(Account c) {
            account = c;
            selected = false;
        }
    }
}