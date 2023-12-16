package com.mire.biz.tv;

public class SamsungTV implements TV {
	//멤버변수

	private Speaker speaker;
	private int price;
	
	public SamsungTV() {
		System.out.println("SamsungTV() 생성");
	}
	
//	public SamsungTV(Speaker speaker, int price) {
//		System.out.println("SamsungTV(SonySpeaker) 생성");
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



	public void setSpeaker(Speaker speaker) {
		System.out.println("setSpeaker 호출 ");
		this.speaker = speaker;
	}


	public void setPrice(int price) {
		System.out.println("setPrice 호출 ");
		this.price = price;
	}
	
	
	
	
}