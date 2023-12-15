package com.mire.biz.tv;

public class SamsungTV implements TV {
	private Speaker speaker;
	
	
	
	public SamsungTV() {
		System.out.println(" SamsungTV() ½ÇÇà");
	}

	@Override
	public void pwerOn() {
		System.out.println("SamsungTV p on");
	}
	
	@Override
	public void volUp() {
		
		if(speaker==null) {
			System.out.println("SamsungTV v up");			
		}else {
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
