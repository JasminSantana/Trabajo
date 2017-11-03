/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soma.transmisor.dao.impl;

import com.soma.transmisor.dao.HibernateDao;
import com.soma.transmisor.dao.UsuarioDao;
import com.soma.transmisor.model.Usuario;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 *
 * @author estadias2017-2
 */
@Repository("usuarioDao")
public class UsuarioDaoImpl extends HibernateDao<Integer,Usuario>implements UsuarioDao{

    @Override
    public void save(Usuario usuario) {        
        guardar(usuario);
    }

    @Override
    public void update(Usuario usuario) {
        actualizar(usuario);
  }

    @Override
    public Usuario busquedaId(int usuarioId) {
        Usuario usuario=getPorId(usuarioId);
        return usuario;
  }

    @Override
    public Usuario busquedaNinckname(String nickname) {
         Criteria criteria = creaCriteria();
        
        criteria.add(Restrictions.eq("nickname", nickname));
        
        System.out.println(UsuarioDaoImpl.class + "\nBuscando Usuario por nickname: " + nickname);
        
        criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        
        return (Usuario) criteria.uniqueResult();
   }
    
}
