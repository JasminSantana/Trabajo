/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soma.transmisor.service;

import com.soma.transmisor.model.Usuario;

/**
 *
 * @author estadias2017-2
 */

public interface UsuarioService {
    boolean save(Usuario usuario);

    boolean update(Usuario usuario);

    Usuario busquedaId(Integer usuarioId);

    Usuario busquedaNinckname(String nickname);
    
}
