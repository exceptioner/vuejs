package com.vuejs.app.board.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class BoardBase {
	private int rnum;
	private int boardNo;
	private String boardNm;
	private String boardDesc;
	private String boardType;
	private String regr;
	private Timestamp regDate;
	private String modr;
	private Timestamp modDate;
	private String delYn;
}
