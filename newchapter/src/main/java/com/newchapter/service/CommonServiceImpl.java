package com.newchapter.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.newchapter.domain.CartVO;
import com.newchapter.domain.Criteria;
import com.newchapter.domain.ProductVO;
import com.newchapter.mapper.CommonMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class CommonServiceImpl implements CommonService{
	
	private CommonMapper mapper;
	
	@Override
	public List<ProductVO> getNewBookList() {
		log.info("신간 목록 서비스 시작");
		return mapper.getNewBookList();
	}

	@Override
	public List<ProductVO> getBookList(Criteria cri) {
		log.info("shop 책 리스트 서비스 시작");
		return mapper.getBookList(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotal(cri);
	}

	@Override
	public ProductVO getbookSingle(int pno) {
		// TODO Auto-generated method stub
		return mapper.getBookSingle(pno);
	}


}
