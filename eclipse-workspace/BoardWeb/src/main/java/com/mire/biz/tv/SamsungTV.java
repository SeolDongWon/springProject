package com.mire.biz.tv;

public class SamsungTV implements TV {
	public void powerOn() {
		System.out.println("SamsungTV power on");
	}

	public void powerOff() {
		System.out.println("SamsungTV power off");
	}

	public void volumeUp() {
		System.out.println("SamsungTV volume up");
	}

	public void volumeDwon() {
		System.out.println("SamsungTV volume down");
	}

}
