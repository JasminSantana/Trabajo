/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soma.transmisor.dao;

import com.soma.transmisor.model.EstatusUsuario;

/**
 * @fecha 31/10/2017
 * @hora 09:31:20 AM
 * @empresa SOMA
 * @version 1.0
 *@correo sant.mar.1997@gmail.com
 * @author Jasmin Santana
 */
public interface EstatusUsuarioDao {
    EstatusUsuario buscarId(int estatusUsuarioid);
}
