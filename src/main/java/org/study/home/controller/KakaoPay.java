package org.study.home.controller;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
import org.study.home.model.KakaoPayApprovalDTO;
import org.study.home.model.KakaoPayReadyDTO;
import org.study.home.model.OrderDTO;
import org.study.home.model.SuseesDTO;
import org.study.home.service.OrderService;

import lombok.extern.java.Log;

@Service
@Log
public class KakaoPay {

	private static final String HOST = "https://kapi.kakao.com";

	private KakaoPayReadyDTO kakaoPayReadyVO;
	private KakaoPayApprovalDTO kakaoPayApprovalVO;
	
	private SuseesDTO suseesDTO;
	
	
	@SuppressWarnings("deprecation")
	public String kakaoPayReady(HttpServletRequest req) throws Exception  {

        System.out.println("99999999999999999999999999:"+ req.getParameter("total_amount"));
		RestTemplate restTemplate = new RestTemplate();

		// 서버로 요청할 Header
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK " + "727c86294cdf02096c6ff1fb8dfad081");
//		headers.add("POST", "/v1/payment/ready HTTP/1.1");
//		headers.add("Host", "kapi.kakao.com");
		headers.add("Accept", MediaType.APPLICATION_JSON_VALUE);
		headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
		suseesDTO = new SuseesDTO();

		suseesDTO.setPartner_order_id(req.getParameter("partner_order_id").toString());
		suseesDTO.setPartner_user_id(req.getParameter("partner_user_id").toString());
		suseesDTO.setItem_name(req.getParameter("item_name").toString());
		suseesDTO.setQuantity(req.getParameter("quantity").toString());
		suseesDTO.setTotal_amount(Integer.parseInt(req.getParameter("total_amount")));
		suseesDTO.setTax_free_amount(req.getParameter("tax_free_amount").toString());

		// 서버로 요청할 Body
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("partner_order_id", req.getParameter("partner_order_id").toString());
		params.add("partner_user_id", req.getParameter("partner_user_id").toString());
		params.add("item_name", req.getParameter("item_name").toString());
		params.add("quantity",  req.getParameter("quantity").toString());
		params.add("total_amount", req.getParameter("total_amount").toString());
		params.add("tax_free_amount", req.getParameter("tax_free_amount").toString());
		params.add("approval_url", "http://192.168.10.67:8080/kakaoPaySuccess");
		params.add("cancel_url", "http://192.168.10.67:8080/kakaoPayCancel");
		params.add("fail_url", "http://192.168.10.67:8080/kakaoPaySuccessFail");
		
		
		
		System.out.println("---------------------1"+ headers);

		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
		System.out.println("---------------------2"+ body);

		
		try {
			kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoPayReadyDTO.class);
			System.out.println("---------------------3"+ kakaoPayReadyVO);
			System.out.println("---------------------4"+ kakaoPayReadyVO.getNext_redirect_pc_url());


			return kakaoPayReadyVO.getNext_redirect_pc_url();

		} catch (RestClientException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "/pay";

	}

	@SuppressWarnings("deprecation")
	public KakaoPayApprovalDTO kakaoPayInfo(String pg_token) {

		System.out.println("---------------------KakaoPayApprovalDTO333333");

		RestTemplate restTemplate = new RestTemplate();
		// 서버로 요청할 Header
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK " + "727c86294cdf02096c6ff1fb8dfad081");
		headers.add("Accept", MediaType.APPLICATION_JSON_VALUE);
		headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");

		// 서버로 요청할 Body
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("tid", kakaoPayReadyVO.getTid());
		params.add("partner_order_id", suseesDTO.getPartner_order_id());
		params.add("partner_user_id", suseesDTO.getPartner_user_id());
		params.add("pg_token", pg_token);
		params.add("total_amount", String.valueOf(suseesDTO.getTotal_amount()));

		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);

		System.out.println("---------------------KakaoPayApprovalDTO444444" + body);

		try {
			kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body,
					KakaoPayApprovalDTO.class);


			return kakaoPayApprovalVO;

		} catch (RestClientException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}
	
	
}