/**
 * Created by valeriyartemenko on 01.04.17.
 */

trigger DependecySpeedForCar on Car__c(before insert) {
    Car__c[] cars = Trigger.new;
    Auto.definceCategory(cars);

}