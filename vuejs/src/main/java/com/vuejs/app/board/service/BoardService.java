package com.vuejs.app.board.service;

import java.util.List;

import com.vuejs.app.board.model.BoardBase;
import com.vuejs.app.board.model.BoardSearch;

public interface BoardService {
	public List<BoardBase> selectBoardList(BoardSearch search);

	public int countBoardList(BoardSearch search);
}
