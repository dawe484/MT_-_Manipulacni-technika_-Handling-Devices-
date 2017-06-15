package mainpackage;

import lejos.nxt.Motor;
import lejos.nxt.remote.RemoteMotor;

public class Main {

	static int natoceniMotoruA = 0;
	
	public static void otoc(RemoteMotor motor, int uhel, int rychlost) {

		if (motor == Motor.A) {
			
			motor.setSpeed(rychlost);
			//double d = Math.round(uhel*7);
			//System.out.println(d);
			//int t = (int) d;
			//System.out.println(t);
			//System.out.println("Hello World");
			int t = uhel*7;
			motor.rotate(t);
			natoceniMotoruA += uhel;
			
			
		} else if (motor == Motor.B) {
			
			motor.setSpeed(rychlost);
			motor.rotate(uhel);
			
		} else if (motor == Motor.C) {
			
			motor.setSpeed(rychlost);
			motor.rotate(uhel);
			
		}
			
		
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		//Motor.A.setSpeed(100);
		//Motor.A.rotate(-1000);
		
		//otoc(Motor.A, -30, 200); //83 7,23
		otoc(Motor.B, 10, 50);
		//otoc(Motor.C, 90, 50);
		
		
		System.out.println(natoceniMotoruA);
	}

}
