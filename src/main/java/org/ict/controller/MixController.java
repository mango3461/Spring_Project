package org.ict.controller;

import java.util.List;

import org.ict.domain.MixVO;
import org.ict.service.MixService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping("/list/*")
public class MixController {

	@Autowired
	MixService service;
	
	@GetMapping(value="/up", 
				produces = {MediaType.APPLICATION_XML_VALUE,
							MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<MixVO>> upList() {
		ResponseEntity<List<MixVO>> entity = null;
		
		try {
			entity = new ResponseEntity<>(service.getUpList(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	@GetMapping(value="/down", 
				produces = {MediaType.APPLICATION_XML_VALUE,
							MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<MixVO>> downList() {
		ResponseEntity<List<MixVO>> entity = null;
		
		try {
			entity = new ResponseEntity<>(service.getDownList(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
}
}
	

