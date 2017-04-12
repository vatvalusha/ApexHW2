/**
 * Created by valeriyartemenko on 10.04.17.
 */

public with sharing class ControllerCustmObject {

    public Comparison__c comparison{get;set;}
//    public List<Comparison__c> listCom;
    public Account account{get;set;}
    public Boolean render{get;set;}


//    public ApexPages.StandardSetController stdCntrlr {get; set;}
//    public ControllerCustmObject(ApexPages.StandardSetController stdController) {
////        listCom = (Comparison__c) stdController.getRecord().id;
//        stdCntrlr   = stdController;
//    }

    public ControllerCustmObject(){
        comparison  = [SELECT Id, IndexOne__c, IndexTwo__c, result__c FROM Comparison__c
        WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
    }

    public Comparison__c returnComparison(){
        return comparison;
    }



    public void returnRender(){
        if(comparison.IndexOne__c == comparison.IndexTwo__c){
            render = false;
        }
        else if(comparison.IndexOne__c != comparison.IndexTwo__c){
            render = true;
        }
    }

    public PageReference save() {
        try {
            upsert(comparison);
        } catch(System.DMLException e) {
            ApexPages.addMessages(e);
            return null;
        }
        return null;
    }
}