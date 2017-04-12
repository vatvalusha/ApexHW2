/**
 * Created by valeriyartemenko on 12.04.17.
 */

public with sharing class Task5OtherTask {

    public Boolean next{get;set;}
    public Boolean back{get;set;}

    ApexPages.StandardController controller;
    public Task5OtherTask(ApexPages.StandardController controller) {
        this.controller = controller;
        back = true;
        next = false;
    }

    public Account oldAcc{get;set;}

    public void getNext()
    {
        next = true;
        back = false;
    }

    public void getBack(){
        back = true;
        next = false;
    }


    public void savePageReference() {
        next = false;
        back = true;
        controller.save();
    }

}