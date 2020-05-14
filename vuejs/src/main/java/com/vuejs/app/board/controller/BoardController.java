package com.vuejs.app.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.vuejs.app.board.model.BoardBase;
import com.vuejs.app.board.model.BoardSearch;
import com.vuejs.app.board.service.BoardService;
import com.vuejs.app.common.model.PageMaker;

@RequestMapping("/board")
@Controller
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	BoardService service;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list(HttpSession session, BoardSearch search) {
		logger.info("list in......");
		ModelAndView mav = null;

		List<BoardBase> list = service.selectBoardList(search);
		int totalCount = service.countBoardList(search);

		mav = new ModelAndView("/board/list");
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(search);
		pageMaker.setTotalCount(totalCount);

		mav.addObject("list", list);
		mav.addObject("pageMaker", pageMaker);
		mav.addObject("search", search);
		return mav;
	}

	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public ModelAndView regist(HttpSession session, BoardSearch search) {
		logger.info("regist in......");
		ModelAndView mav = new ModelAndView("/board/regist");

		mav.addObject("search", search);
		return mav;
	}
}
