/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.*;
import java.util.*;
import modelo.Platos;
import util.MySQLConexion;

/**
 *
 * @author Joaquin
 */
public class PlatosDao {
    public List<Platos> ListadoPlatos(String Caracter){
        List<Platos> lis=new ArrayList();
         Connection cn=MySQLConexion.getConexion();
         String sql="select * from platos where caracter_plato=?";
         try{
           PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, Caracter);
           ResultSet rs=st.executeQuery();
           while(rs.next()){
               Platos p=new Platos();
               p.setCod_plato(rs.getInt(1));
               p.setNombre_plato(rs.getString(2));
               p.setDescripcion_plato(rs.getString(3));
               p.setPrecio_plato(rs.getDouble(4));
               p.setCod_categoria(rs.getInt(5));
               p.setCaracter_plato(rs.getString(6));
               lis.add(p);
           }
         }catch(Exception ex){
             
         }
         return lis;
     }
    public List<Platos> ListadoPlatos(){
        List<Platos> lis=new ArrayList();
         Connection cn=MySQLConexion.getConexion();
         String sql="select * from platos ";
         try{
           PreparedStatement st=cn.prepareStatement(sql);
           ResultSet rs=st.executeQuery();
           while(rs.next()){
               Platos p=new Platos();

               p.setCod_plato(rs.getInt(1));
               p.setNombre_plato(rs.getString(2));
               p.setDescripcion_plato(rs.getString(3));
               p.setPrecio_plato(rs.getDouble(4));
               p.setCod_categoria(rs.getInt(5));
               p.setCaracter_plato(rs.getString(6));
               lis.add(p);
           }
         }catch(Exception ex){
             
         }
         return lis;
     }
}