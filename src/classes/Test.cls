/**
 * Created by valeriyartemenko on 06.04.17.
 */

public with sharing class Test {
    public static void changeOnChildMessage(List<SObject> children, List<SObject> parent){

        Set<Id> key = new Set<Id>();
        for(SObject child : children )
            key.add(child.ChildObject__c);

        parent = [Select id, message__c from ChildObject__c where id in : key];

        for(Integer i = 0; i<parent.size(); i++){
            for(Integer j = 0;j<children.size(); j++)
                if(parent.get(i).id == children.get(j).ChildObject__c) {
                    parent.get(i).message__c = children.get(j).message__c;
                }
        }
        upsert parent;

    }

}