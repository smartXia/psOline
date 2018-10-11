/**
 * 
 */
package com.neusoft.service;

import com.neusoft.po.Rela;

/**
 * @author Administrator
 *
 */
public interface IRelaService {
	public Rela addRela(Rela rela);
	public Rela updateRela(Rela rela);
	public Rela deleteRela(Rela rela);
	public Rela searchRela(Rela rela); 
}
