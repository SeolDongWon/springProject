package com.mire.biz.tv;

public class LgSpeaker implements Speaker {

	public LgSpeaker() {
		System.out.println("LgSpeaker() ��ü����");
	}

	public void volumeUp() {
		System.out.println("LgSpeaker() volumeUp()");
	}

	public void volumeDown() {
		System.out.println("LgSpeaker() volumeDown()");
	}
}
