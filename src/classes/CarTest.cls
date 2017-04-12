/**
 * Created by valeriyartemenko on 30.03.17.
 */


@isTest
public class CarTest {
    static testMethod void validateHelloWorld() {
        Car car = new Car('BMW', 80);
        Road road = new Road('Kiev-Dnepr', 300);
        System.debug('Auto with model: '+ car.getModel() + 'Trace: '+road.getName()+' have speed:' +car.sensor(160));

    }
}