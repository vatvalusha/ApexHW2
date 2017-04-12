/**
 * Created by valeriyartemenko on 10.04.17.
 */

public with sharing class Task5 {

    ApexPages.StandardController controller;
    public Task5(ApexPages.StandardController controller) {
        this.controller = controller;
    }

    PageReference pageRefNext = new PageReference('/apex/SavePageVF');
    PageReference pageRefzSave = new PageReference('/apex/EditVF');

    public PageReference getReference() {
        return pageRefNext;
    }

    public PageReference getBackFeReference(){
        PageReference pageBack =  new PageReference('/apex/EditVF?ID='+ApexPages.currentPage().getParameters().get('id') );
        pageBack.setRedirect(true);
        return pageBack;
    }

    public PageReference savePageReference() {
        controller.save();
        return pageRefzSave;

    }

}