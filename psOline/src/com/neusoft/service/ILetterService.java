/**
 * 
 */
package com.neusoft.service;

import com.neusoft.po.Letter;

/**
 * @author Administrator
 *
 */
public interface ILetterService {
	public Letter addLetter(Letter letter);
	public Letter updateLetter(Letter letter);
	public Letter deleteLetter(Letter letter);
	public Letter searchLetter(Letter letter); 
}
