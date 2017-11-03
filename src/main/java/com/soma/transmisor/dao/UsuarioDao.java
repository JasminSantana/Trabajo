/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soma.transmisor.dao;

import com.soma.transmisor.model.Usuario;

/**
 *
 * @author estadias2017-2
 */
public interface UsuarioDao {

    void save(Usuario usuario);

    void update(Usuario usuario);

    Usuario busquedaId(int usuarioId);

    Usuario busquedaNinckname(String nickname);

}
