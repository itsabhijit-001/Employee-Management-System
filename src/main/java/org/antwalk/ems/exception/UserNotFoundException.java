package org.antwalk.ems.exception;

import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND)
public class UserNotFoundException extends Exception{
    private static final long serialVersionUID = 1L;

	public UserNotFoundException(String message){
    	super(message);
    }
}
