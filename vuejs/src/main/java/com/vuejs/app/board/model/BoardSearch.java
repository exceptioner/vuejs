package com.vuejs.app.board.model;

import com.vuejs.app.common.model.Criteria;

import lombok.Data;

@Data
public class BoardSearch extends Criteria {
	private int boardNo;
	private String boardNm;
	private String boardDesc;
	private String boardType;
	private String delYn;
}
