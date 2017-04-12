/**
 * Created by valeriyartemenko on 01.04.17.
 */

public class Auto {

    String model;
    String category;
    Integer speed;
    String owner;

    public static void definceCategory(Car__c[] autos){
        for(Car__c auto : autos ){
            if(auto.Speed__c <=150)
                auto.Category__c = 'cargo';
            if(auto.Speed__c > 150 && auto.Speed__c <=200)
                auto.Category__c = 'passenger';
            if(auto.Speed__c>250)
                auto.Category__c = 'sport';
        }
    }



}