package com.seolmarket.biz.board;

public class BoardSearchVO {
	
	private String category;
	private int boardClassNo;
	private String boardClassName;
	private String boardCategoryName;
	private String searchCondition;
	private String searchKeyword;
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getBoardClassNo() {
		return boardClassNo;
	}
	public void setBoardClassNo(int boardClassNo) {
		this.boardClassNo = boardClassNo;
	}
	public String getBoardClassName() {
		return boardClassName;
	}
	public void setBoardClassName(String boardClassName) {
		this.boardClassName = boardClassName;
	}
	public String getBoardCategoryName() {
		return boardCategoryName;
	}
	public void setBoardCategoryName(String boardCategoryName) {
		this.boardCategoryName = boardCategoryName;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	@Override
	public String toString() {
		return "BoardSearchVO [category=" + category + ", boardClassNo=" + boardClassNo + ", boardClassName="
				+ boardClassName + ", boardCategoryName=" + boardCategoryName + ", searchCondition=" + searchCondition
				+ ", searchKeyword=" + searchKeyword + "]";
	}
	
	
	
	

}
