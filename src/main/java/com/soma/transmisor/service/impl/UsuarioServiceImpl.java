/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soma.transmisor.service.impl;

import com.soma.transmisor.dao.UsuarioDao;
import com.soma.transmisor.model.Usuario;
import com.soma.transmisor.service.UsuarioService;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

/**
 *
 * @author estadias2017-2
 */
@Service("usuarioService")
@Transactional
public class UsuarioServiceImpl implements UsuarioService {

    @Autowired
    UsuarioDao usuarioDao;
    private boolean estadoMetodo = false;

    @Override
    public boolean save(Usuario usuario) {
        usuarioDao.save(usuario);
        return estadoMetodo = true;
    }

    @Override
    public boolean update(Usuario usuario) {
        usuarioDao.update(usuario);
        return estadoMetodo = true;
    }

    @Override
    public Usuario busquedaId(Integer usuarioId) {
        return usuarioDao.busquedaId(usuarioId);
    }

    @Override
    public Usuario busquedaNinckname(String nickname) {
        return usuarioDao.busquedaNinckname(nickname);
    }

}
