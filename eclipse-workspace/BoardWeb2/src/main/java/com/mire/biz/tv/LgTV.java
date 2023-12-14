package com.mire.biz.tv;

public class LgTV implements TV {
//	public void powOn() {
//		System.out.println("LgTV power on");
//	}
//	public void powOff() {
//		System.out.println("LgTV power off");
//	}
//	public void speakerUp() {
//		System.out.println("LgTV volume up");
//	}
//	public void speakerDwon() {
//		System.out.println("LgTV volume down");
//	}
	public LgTV() {
		System.out.println("LgTV 생성");
	}
	
	public void initMethod() {
		System.out.println("lgTV init함수");
	}
	
	@Override
	public void powerOn() {
		System.out.println("LgTV power on");
	}

	@Override
	public void powerOff() {
		System.out.println("LgTV power off");
	}
	@Override
	public void volumeUp() {
		System.out.println("LgTV volume up");
	}
	@Override
	public void volumeDwon() {
		System.out.println("LgTV volume down");
	}
	
	public void destoryMethod() {
		System.out.println("lgTV destory함수");
	}

}
