package com.kinalitosclothes.modelo;

import com.kinalitosclothes.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClientesDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    public List<Clientes> listar() {
        String sql = "call sp_ListarCliente();";
        List<Clientes> lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Clientes c = new Clientes();
                c.setCodigoCliente(rs.getInt(1));
                c.setNit(rs.getString(2));
                c.setNombreCliente(rs.getString(3));
                c.setApellidoCliente(rs.getString(4));
                c.setDireccionCliente(rs.getString(5));
                c.setTelefonoCliente(rs.getString(6));
                c.setCorreoCliente(rs.getString(7));
                lista.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }

    public int agregar(Clientes c) {
        String sql = "call sp_AgregarCliente(?, ?, ?, ?, ?, ?);";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, c.getNit());
            ps.setString(2, c.getNombreCliente());
            ps.setString(3, c.getApellidoCliente());
            ps.setString(4, c.getDireccionCliente());
            ps.setString(5, c.getTelefonoCliente());
            ps.setString(6, c.getCorreoCliente());
            ps.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

    public int eliminar(int codigoCliente) {
        String sql = "call sp_EliminarCliente(?);";
        resp = 0;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, codigoCliente);
            resp = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

    public Clientes buscar(int codigoCliente) {
        String sql = "call sp_BuscarCliente(?);";
        Clientes c = null;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, codigoCliente);
            rs = ps.executeQuery();
            if (rs.next()) {
                c = new Clientes();
                c.setCodigoCliente(rs.getInt(1));
                c.setNit(rs.getString(2));
                c.setNombreCliente(rs.getString(3));
                c.setApellidoCliente(rs.getString(4));
                c.setDireccionCliente(rs.getString(5));
                c.setTelefonoCliente(rs.getString(6));
                c.setCorreoCliente(rs.getString(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c;
    }

    public int actualizar(Clientes c) {
        String sql = "call sp_EditarCliente(?, ?, ?, ?, ?, ?, ?);";
        resp = 0;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, c.getCodigoCliente());
            ps.setString(2, c.getNit());
            ps.setString(3, c.getNombreCliente());
            ps.setString(4, c.getApellidoCliente());
            ps.setString(5, c.getDireccionCliente());
            ps.setString(6, c.getTelefonoCliente());
            ps.setString(7, c.getCorreoCliente());
            resp = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
    
}
