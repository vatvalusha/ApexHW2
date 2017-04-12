/**
 * Created by valeriyartemenko on 30.03.17.
 */

public with sharing class Road {


    private String name;
    private Integer distance;

    public String getName(){
        return this.name;
    }

    public Integer getInteger(){
        return this.distance;
    }

    public Road(String name, Integer distance){
        this.name = name;
        this.distance = distance;
    }

}