package com.newchapter.service;

import java.util.List;

import com.newchapter.domain.CartVO;
import com.newchapter.domain.Criteria;
import com.newchapter.domain.ProductVO;

public interface CommonService {
	
	public List<ProductVO> getNewBookList();

	public List<ProductVO> getBookList(Criteria cri);

	public int getTotal(Criteria cri);

	public ProductVO getbookSingle(int pno);

}
