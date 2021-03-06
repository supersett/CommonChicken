package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.ProductDTO;
import com.commonchicken.dto.SearchProductVO;

public interface ProductService {
	List<ProductDTO> getProductList();
	List<ProductDTO> selectProductListAdmin(Map<String, Object> map);
	List<SearchProductVO> getProduct(Map<String, Object> map);
	void insertProduct(ProductDTO product);
	void deletePoduct(String prdCode);
	int getStoreProductCount(String stoNum);

}
