package com.health.valid;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;

@Service
public class Validator {
	/* 회원가입 시, 유효성 체크 */
	@Transactional(readOnly = true)
	public Map<String, String> validateHandling(Errors errors) {
		Map<String, String> validatorResult = new HashMap<>(); /* 유효성 검사에 실패한 필드 목록을 받음 */ 
		for (FieldError error : errors.getFieldErrors()) {
			String validKeyName = String.format("valid_%s", error.getField()); 
			validatorResult.put(validKeyName, error.getDefaultMessage());
			} 
		return validatorResult;
	}

	
	
	//서비스단 연결 주로 서비스에서 사용, 
}
