/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soma.transmisor.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



import org.hibernate.annotations.ForeignKey;

/**
 * @fecha 27/10/2017
 * @hora 11:11:12 AM
 * @empresa SOMA
 * @version 1.0
 * @correo sant.mar.1997@gmail.com
 * @author Jasmin Santana
 */
@Entity
@Table(name = "bitaaccionesusuario")
public class BitaAccionesUsuario implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bitacoraid")
    private Integer bitacoraid;
    @Column(name = "fecha_hora")
    private  Date fechaHora;


    //Establece relacion con Usuario
    @ManyToOne(cascade = CascadeType.ALL)
    @ForeignKey(name = "usuarioid_fk")
    @JoinColumn(name = "usuarioid")
    private Usuario usuario;
    //Establece relacion con ct_accion
    @ManyToOne(cascade = CascadeType.ALL)
    @ForeignKey(name = "accionid_fk")
    @JoinColumn(name = "accionid")
    private Accion accion;

//getter and setter

    public Integer getBitacoraid() {
        return bitacoraid;
    }

    public void setBitacoraid(Integer bitacoraid) {
        this.bitacoraid = bitacoraid;
    }

    public Date getFechaHora() {
        return fechaHora;
    }

    public void setFechaHora(Date fechaHora) {
        this.fechaHora = fechaHora;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Accion getAccion() {
        return accion;
    }

    public void setAccion(Accion accion) {
        this.accion = accion;
    }

    @Override
    public String toString() {
        return "BitaAccionesUsuario{" + "bitacoraid=" + bitacoraid + ", fechaHora=" + fechaHora + ", usuario=" + usuario + ", accion=" + accion + '}';
    }



    
   
}
