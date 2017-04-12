/**
 * Created by valeriyartemenko on 09.04.17.
 */

public with sharing class MyOwnAccount{
    public List<Contact> conList {get;set;}

    public MyOwnAccount(ApexPages.StandardSetController controller) {

    }

    public PageReference ContactLists()
    {
        if(ApexPages.currentPage().getParameters().get('id') != null)
            conList = [Select id,Name,Phone,Email from contact where accountId =: ApexPages.currentPage().getParameters().get('id')];
        return null;
    }
}