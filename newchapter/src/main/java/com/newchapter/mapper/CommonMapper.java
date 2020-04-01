package com.newchapter.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.newchapter.domain.CartVO;
import com.newchapter.domain.Criteria;

import com.newchapter.domain.ProductVO;

@Mapper
public interface CommonMapper {

	public List<ProductVO> getNewBookList();

	public List<ProductVO> getBookList(Criteria cri);

	public int getTotal(Criteria cri);

	public ProductVO getBookSingle(int pno);

}
