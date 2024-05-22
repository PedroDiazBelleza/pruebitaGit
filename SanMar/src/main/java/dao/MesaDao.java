package dao;
import java.sql.*;
import util.MySQLConexion;

import java.util.*;
import modelo.*;

public class MesaDao {
 
    
     public List<Reserva> ListadoReservas(String fecha){
         List<Reserva> lis=new ArrayList();
         Connection cn=MySQLConexion.getConexion();
         String sql="SELECT * FROM reserva WHERE fecha_reserva >= DATE_SUB(?, INTERVAL 2 HOUR) AND fecha_reserva <= DATE_ADD(?, INTERVAL 2 HOUR);";
         try{
           PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, fecha);
            st.setString(2, fecha);
           ResultSet rs=st.executeQuery();
           while(rs.next()){
               Reserva p=new Reserva();
               p.setCod_reserva(rs.getInt(1));
               p.setCod_cli(rs.getInt(2));
               p.setCod_admin(rs.getInt(3));
               p.setCod_mesa(rs.getInt(4));
               p.setFecha_reserva(rs.getString(5));
               p.setEstado(rs.getString(6));
               lis.add(p);
           }
         }catch(Exception ex){
             
         }
         return lis;
     }
   //consultax nro de prestamo
   public Mesa buscamesa(int nro){
         Mesa p=null;
         Connection cn=MySQLConexion.getConexion();
         String sql="select * from mesa "
                 + " where cod_mesa=?";
         try{
           PreparedStatement st=cn.prepareStatement(sql);
           st.setInt(1, nro);
           ResultSet rs=st.executeQuery();
           if(rs.next()){
               p=new Mesa();
               p.setNmesa(rs.getInt(1));
               p.setNasientos(rs.getInt(2));
               p.setDes(rs.getString(3));
           }
         }catch(Exception ex){
             ex.printStackTrace();
         }
         return p;
     }
   public int ValidaExistencia(int mesa, String Fecha){
         int p=0;
         Connection cn=MySQLConexion.getConexion();
         String sql="select count(*) from reserva where cod_mesa=? and fecha_reserva=?";
         try{
           PreparedStatement st=cn.prepareStatement(sql);
           st.setInt(1, mesa);
           st.setString(2, Fecha);
           ResultSet rs=st.executeQuery();
           if(rs.next()){
               p=rs.getInt(1);
             
           }
         }catch(Exception ex){
             ex.printStackTrace();
         }
         return p;
     }
     //metodo para modificar

    public void Reservar(int nmesa, int codcli, String fecha) {
    Connection cn = MySQLConexion.getConexion();
    try {
        String sql = "INSERT INTO `reserva`(`cod_reserva`, `cod_cliente`, `cod_admin`, `cod_mesa`, `fecha_reserva`, `estado_reserva`) VALUES (null,?,1,?,?,'R')";
        PreparedStatement st = cn.prepareStatement(sql);
        st.setInt(1, codcli);
        st.setInt(2, nmesa);
        st.setString(3, fecha);
        st.executeUpdate();
    } catch (Exception ex) {
        ex.printStackTrace();
    }
}}
