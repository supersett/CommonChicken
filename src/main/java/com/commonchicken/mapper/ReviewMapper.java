package com.commonchicken.mapper;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.ReplyVO;
import com.commonchicken.dto.ReviewDTO;
import com.commonchicken.dto.ReviewVO;


public interface ReviewMapper {
	int insertReview(ReviewDTO review);
	int updateReiew(ReviewDTO review);
	ReviewDTO selectReview(int revNum);
	int getReviewCount(String memEmail);
	int selectStoreReviewMng(String stoNum);
	List<ReviewVO> selectAllReview();
	List<ReviewVO> selectPagerReview(Map<String, Object> map);
	List<ReplyVO> selectReviewReply(Map<String, Object> map);
	List<ReviewVO> selectStoreReviewList(String stoNum);
}
