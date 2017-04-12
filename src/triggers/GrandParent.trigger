/**
 * Created by valeriyartemenko on 06.04.17.
 */

trigger GrandParent on GrandParentObject__c (before update){
    List<GrandParentObject__c> grandParentObjects = Trigger.new;
//    SignalForParent.changeMessageParetn(grandParentObjects);
}