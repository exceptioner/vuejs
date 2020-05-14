package com.vuejs.app.code.service;

import java.util.List;

import com.vuejs.app.code.model.CodeBase;
import com.vuejs.app.code.model.CodeSearch;

public interface CodeService {
	public List<CodeBase> selectCodeList(CodeSearch search);

	public int countCodeList(CodeSearch search);
}
