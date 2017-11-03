/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soma.transmisor.dao.impl;

import com.soma.transmisor.dao.EstatusUsuarioDao;
import com.soma.transmisor.dao.HibernateDao;
import com.soma.transmisor.model.EstatusUsuario;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Jasmin Santana
 */
@Repository("estatusUsuarioDao")
public class EstatusUsuarioDaoImpl extends HibernateDao<Integer, EstatusUsuario>implements EstatusUsuarioDao{

    @Override
    public EstatusUsuario buscarId(int estatusUsuarioid) {
    System.out.println(EstatusUsuarioDaoImpl.class + "\nBuscando Estatus por estatususuarioId: " + estatusUsuarioid);
        EstatusUsuario estatus = getPorId(estatusUsuarioid);
        return estatus;  
    }
        
}
