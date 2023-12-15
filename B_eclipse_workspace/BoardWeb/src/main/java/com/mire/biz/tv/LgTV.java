package com.mire.biz.tv;

public class LgTV implements TV {
	private Speaker speaker;

	@Override
	public void pwerOn() {
		System.out.println("LgTV p on");
	}

	@Override
	public void volUp() {
		if (speaker == null) {
			System.out.println("SamsungTV v up");
		} else {
			speaker.volUp();
		}
	}
	
	public Speaker getSpeaker() {
		return speaker;
	}

	public void setSpeaker(Speaker speaker) {
		this.speaker = speaker;
	}
	
}
