/**
 * Created by valeriyartemenko on 06.04.17.
 */

trigger ChidlTrigger on ChildObject__c (before update ) {
    List<ChildObject__c> childObjects = Trigger.new;
    SignalForParent.changeMessageParetn(childObjects);

}