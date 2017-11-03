/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soma.transmisor.service.impl;

import com.soma.transmisor.dao.EstatusUsuarioDao;
import com.soma.transmisor.model.EstatusUsuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Jasmin Santana
 */
@Service("estatusUsuarioService")
@Transactional
public class EstatusUsuarioServiceImpl implements EstatusUsuarioDao{
@Autowired
EstatusUsuarioDao estatusUsuarioDao;
    
    @Override
    public EstatusUsuario buscarId(int estatusUsuarioid) {
    return estatusUsuarioDao.buscarId(estatusUsuarioid);
    }
    
}
