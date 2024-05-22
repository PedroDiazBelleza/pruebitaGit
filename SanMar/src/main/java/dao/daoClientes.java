package dao;
import modelo.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import util.MySQLConexion;

public class daoClientes {
    
     public Clientes BuscarCliente(String correo, String pass) {
        Clientes p = null;
        String sql = "SELECT cod_cliente, nombre_cliente, apellido_cliente, correo_cliente, clave_cliente, celular_cliente FROM Clientes WHERE correo_cliente = ? AND clave_cliente = ?;";
        try {
            Connection cn = MySQLConexion.getConexion();
            PreparedStatement st = cn.prepareStatement(sql);
            st.setString(1, correo);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                p = new Clientes();
                p.setCodigoCli(rs.getInt(1));
                p.setNombreCli(rs.getString(2));
                p.setApellidoCli(rs.getString(3));
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Cliente No Existe BD", "Advertencia", JOptionPane.WARNING_MESSAGE);
        }
        return p;
    }

    public void agregarCliente(String nom, String ape, String correo, String pass, String celular) {
        Connection cn = null;
        try {
            cn = MySQLConexion.getConexion();
            String sql = "INSERT INTO Clientes (cod_cliente, nombre_cliente, apellido_cliente, correo_cliente, clave_cliente, celular_cliente) VALUES (null, ?, ?, ?, ?, ?)";
            PreparedStatement st = cn.prepareStatement(sql);
            st.setString(1, nom);
            st.setString(2, ape);
            st.setString(3, correo);
            st.setString(4, pass);
            st.setString(5, celular);
            st.executeUpdate();
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "No se puede agregar Cliente", "Advertencia", JOptionPane.WARNING_MESSAGE);
        } finally {
            try {
                if (cn != null) {
                    cn.close();
                }
            } catch (Exception e2) {
                JOptionPane.showMessageDialog(null, e2.getMessage(), "Advertencia", JOptionPane.WARNING_MESSAGE);
            }
        }
    }
}