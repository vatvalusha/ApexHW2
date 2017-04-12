/**
 * Created by valeriyartemenko on 30.03.17.
 */

public with sharing class Car implements Transport{

    String model;
    Integer speed;
    Integer maxSpped{
        set{
            if(speed > 200)
                this.setSpeed(200);
            }
        get;
        }


    public String getModel(){
        return this.model;
    }

    public Integer getSpeed(){
        return this.speed;
    }

    public Double sensor(Integer distance){
        return distance/this.speed;
    }

    public Car(String model, Integer speed){
        this.model = model;
        this.speed = speed;
        this.maxSpped = speed;
    }

    public void setSpeed(Integer speed){
        this.speed = speed;
    }


    /*

    Transport[] transports = new Transport[2];
transports[0] = new Bike('111');
transports[0] = new Car('222', 200);
for(Integer i = 0; i < transports.size(); i++){
    System.debug(transports[i]);
}
     */
}