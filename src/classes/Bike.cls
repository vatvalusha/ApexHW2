/**
 * Created by valeriyartemenko on 30.03.17.
 */

public with sharing class Bike implements Transport{


    private String model;

    public String getModel(){
        return this.model;
    }

    public Bike(String model){
        this.model = model;
        System.debug('Model is' + model);
    }


}