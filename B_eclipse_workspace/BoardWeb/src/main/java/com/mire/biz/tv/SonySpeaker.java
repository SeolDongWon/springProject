package com.mire.biz.tv;

public class SonySpeaker implements Speaker {
	
	
	public SonySpeaker() {
		System.out.println(" SonySpeaker() ����");
	}

	@Override
	public void volUp() {
		System.out.println("SonySpeaker vol up");
	}
}
