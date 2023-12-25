package com.seolmarket.biz.board;

public class BoardCategoryVO {
	private int no;
	private int boardClassNo;
	private String name;
	private String state;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getBoardClassNo() {
		return boardClassNo;
	}
	public void setBoardClassNo(int boardClassNo) {
		this.boardClassNo = boardClassNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "BoardCategoryVO [no=" + no + ", boardClassNo=" + boardClassNo + ", name=" + name + ", state=" + state
				+ "]";
	}
	
	
	
	
}
