package com.mire.view.controller;

import java.util.HashMap;
import java.util.Map;

import com.mire.view.board.*;
import com.mire.view.user.*;

public class HandlerMapping {
	private Map<String, Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
//		mappings.put("/login.do", new LoginController());
//		mappings.put("/getBoardList.do", new GetBoardListController());
//		mappings.put("/getBoard.do", new GetBoardController());
//		mappings.put("/insertBoard.do", new InsertBoardController());
//		mappings.put("/updateBoard.do", new UpdateBoardController());
//		mappings.put("/deleteBoard.do", new DeleteBoardController());
//		mappings.put("/logout.do", new LogoutController());
//		mappings.put("/idDoubleCheck.do", new IdDoubleCheckController());
//		mappings.put("/insertUserController.do", new InsertUserController());
//		mappings.put("/getUserList.do", new GetUserListController());
//		mappings.put("/updateUserController.do", new UpdateUserController());
//		mappings.put("/deleteUserController.do", new DeleteUserController());
	}

	public Controller getController(String path) {
		return mappings.get(path);
	}
}
