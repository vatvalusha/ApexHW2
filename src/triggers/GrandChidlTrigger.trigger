/**
 * Created by valeriyartemenko on 06.04.17.
 */

trigger GrandChidlTrigger on GrandChildObject__c (before insert) {
    List<GrandChildObject__c> children = Trigger.new;
    SignalForParent.changeMessageChild(children);

}