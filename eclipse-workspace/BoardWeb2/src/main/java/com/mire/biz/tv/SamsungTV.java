package com.mire.biz.tv;

public class SamsungTV implements TV {
	//糕滚函荐
	private Speaker speaker;
	private int price;
	
	public SamsungTV() {
		System.out.println("SamsungTV() 积己");
	}
	
//	public SamsungTV(Speaker speaker, int price) {
//		System.out.println("SamsungTV(SonySpeaker) 积己");
//		this.speaker = speaker;
//		this.price = price;
//	}

	public void powerOn() {
		System.out.println("SamsungTV power on : "+price);
	}

	public void powerOff() {
		System.out.println("SamsungTV power off : "+price);
	}

	public void volumeUp() {
//		System.out.println("SamsungTV volume up");
		this.speaker.volumeUp();
	}

	public void volumeDwon() {
//		System.out.println("SamsungTV volume down");
		this.speaker.volumeDown();
	}
	
	
	
	
}
