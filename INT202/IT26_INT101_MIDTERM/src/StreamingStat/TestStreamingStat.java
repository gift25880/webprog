/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StreamingStat;

/**
 *
 * @author Saraf
 */
public class TestStreamingStat {

    public static void main(String[] args) {
        StreamingStat carSpeed = new StreamingStat("Speed");
        carSpeed.setValue(20.0);
        carSpeed.setValue(28.0);
        carSpeed.setValue(40.0);
        carSpeed.setValue(30.0);
        System.out.println(carSpeed.toString());
        StreamingStat machineTemp = new StreamingStat("Temp");
        machineTemp.setValue(80.0);
        machineTemp.setValue(85.0);
        machineTemp.setValue(75.0);
        System.out.println(machineTemp.toString());

    }
}
