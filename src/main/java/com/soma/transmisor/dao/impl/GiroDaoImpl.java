/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soma.transmisor.dao.impl;

import com.soma.transmisor.dao.GiroDao;
import com.soma.transmisor.dao.HibernateDao;
import com.soma.transmisor.model.Giro;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Jasmin Santana
 */
@Repository("giroDao")
public class GiroDaoImpl extends HibernateDao<Integer, Giro> implements GiroDao {

    @Override
    public void update(Giro giro) {
        actualizar(giro);
        System.out.print(GiroDaoImpl.class + "Se ha actualizado correctamente el giro" + giro.toString());

    }
    @Override
    public void save(Giro giro) {
        guardar(giro);
        System.out.print(GiroDaoImpl.class + "Se ha guardado correctamente el giro" + giro.toString());
    }
    @Override
    public void delete(int giroid) {
        Criteria crit = creaCriteria();
        crit.add(Restrictions.eq("giroid", giroid));
        Giro giro = (Giro) crit.uniqueResult();
        eliminar(giro);
        System.out.print(GiroDaoImpl.class + "Se ha guardado correctamente el giro" + giroid);
    }

    @Override
    public Giro buscaId(int giroid) {
        System.out.println(GiroDaoImpl.class + "\nBuscando Giro por giroId: " + giroid);
        Giro giro = getPorId(giroid);
        return giro;
    }

    @Override
    public List<Giro> showGiro() {
        //criterias consultas a la base de datso
        Criteria criteria = creaCriteria();
        //indicar que no traiga datos repetidos
        criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        //lista los giro sin repetir algun dato
        List<Giro> lGiro = criteria.list();
        return lGiro;
    }

}
