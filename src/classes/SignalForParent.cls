/**
 * Created by valeriyartemenko on 06.04.17.
 */

public with sharing class SignalForParent {
    public static void changeMessageChild(List<GrandChildObject__c> grandChildObjects) {
        mainMethodForChangeMessageChild(grandChildObjects);
    }
    public static void changeMessageParetn(List<ChildObject__c> grandChildObjects){
        mainMethodForChangeMessageParent(grandChildObjects);
    }


    public static void mainMethodForChangeMessageChild(List<GrandChildObject__c> grandChildObjects) {
        Set<Id> key = new Set<Id>();
        for (GrandChildObject__c child : grandChildObjects)
            key.add(child.ChildObject__c);

        List<ChildObject__c> idChild = [Select id, message__c from ChildObject__c where id in :key];
        for (Integer i = 0; i < idChild.size(); i++) {
            for (Integer j = 0; j < grandChildObjects.size(); j++) {
                if (idChild.get(i).id == grandChildObjects.get(j).ChildObject__c) {
                    idChild.get(i).message__c = grandChildObjects.get(j).message__c;
                    idChild.get(i).Log__c = system.today().format() + ' ' + grandChildObjects.get(j).Name + ' ' + grandChildObjects.get(i).message__c;
                }
            }
        }
        upsert idChild;
    }

    public static void mainMethodForChangeMessageParent(List<ChildObject__c> grandChildObjects) {
        Set<Id> key = new Set<Id>();
        for (ChildObject__c child : grandChildObjects)
            key.add(child.ParentObject__c);

        List<ParentObject__c> idChild = [Select id, message__c from ParentObject__c where id in :key];
        for (Integer i = 0; i < idChild.size(); i++) {
            for (Integer j = 0; j < grandChildObjects.size(); j++) {
                if (idChild.get(i).id == grandChildObjects.get(j).ParentObject__c) {
                    idChild.get(i).message__c = grandChildObjects.get(j).message__c;
                    idChild.get(i).Log__c = system.today().format() + ' ' + grandChildObjects.get(j).Name + ' ' + grandChildObjects.get(i).message__c;

                }
            }
        }
        upsert idChild;
    }

    public static void getLog(List<GrandChildObject__c> grandChildObjects) {
        Set<Id> key = new Set<Id>();
        for (GrandChildObject__c child : grandChildObjects)
            key.add(child.ChildObject__c);

        List<ChildObject__c> idChild = [Select id, message__c from ChildObject__c where id in :key];
        for (Integer i = 0; i < idChild.size(); i++) {
            for (Integer j = 0; j < grandChildObjects.size(); j++)
                if (idChild.get(i).id == grandChildObjects.get(j).ChildObject__c) {
                    idChild.get(i).Log__c = system.today().format() + ' ' + grandChildObjects.get(j).Name + ' ' + grandChildObjects.get(i).message__c;
                }
        }
        upsert idChild;
    }
}