package com.mire.biz.tv;

public class SamsungTV implements TV {
	//�������
	private Speaker speaker;
	private int price;
	
	public SamsungTV() {
		System.out.println("SamsungTV() ����");
	}
	
//	public SamsungTV(Speaker speaker, int price) {
//		System.out.println("SamsungTV(SonySpeaker) ����");
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
