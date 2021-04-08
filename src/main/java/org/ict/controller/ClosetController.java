package org.ict.controller;

import java.util.List;

import org.ict.domain.ClosetVO;
import org.ict.service.ClosetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/closet/*")
public class ClosetController {

	@Autowired
	private ClosetService service;
	
	@GetMapping(value="/{mno}", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<ClosetVO>> closetUpList(@PathVariable("mno") Integer mno) {
		
		ResponseEntity<List<ClosetVO>> entity = null;
		
		try {
			entity = new ResponseEntity<>(service.closetUpList(mno), HttpStatus.OK);
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
}
