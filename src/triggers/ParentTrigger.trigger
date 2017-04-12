/**
 * Created by valeriyartemenko on 06.04.17.
 */

trigger ParentTrigger on ParentObject__c (before update ) {
    ParentObject__c[] parentObjects = Trigger.new;

}