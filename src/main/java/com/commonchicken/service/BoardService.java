package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.BoardDTO;

public interface BoardService {
	void insertBoard(BoardDTO notice);
	void updateBoard(Map<String, Object> map);
	void updateViews(int brdNum);
	BoardDTO selectBoard(int brdNum);
	List<BoardDTO> selectBoardList(int brdCategory);
	void deleteBoard(int brdNum);
	int getBoardCount(int brdCategory);
	List<BoardDTO> selectPagerBoardList(Map<String,Object> map);
}
