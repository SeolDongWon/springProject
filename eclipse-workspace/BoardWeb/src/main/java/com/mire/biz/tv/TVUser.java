package com.mire.biz.tv;

public class TVUser {

	public static void main(String[] args) {
		BeanFactory bf = new BeanFactory();
		
		TV tv = (TV)bf.getBean(args[0]);
		tv.powerOn();
		tv.powerOff();
		tv.volumeUp();
		tv.volumeDwon();
		
//		LgTV ltv = new LgTV();
//		ltv.powOn();
//		ltv.powOff();
//		ltv.speakerUp();
//		ltv.speakerDwon();
	}
}
