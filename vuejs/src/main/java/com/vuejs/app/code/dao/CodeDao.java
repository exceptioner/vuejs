package com.vuejs.app.code.dao;

import java.util.List;

import com.vuejs.app.code.model.CodeBase;
import com.vuejs.app.code.model.CodeSearch;

public interface CodeDao {
	public List<CodeBase> selectCodeList(CodeSearch search);

	public int countCodeList(CodeSearch search);

}
