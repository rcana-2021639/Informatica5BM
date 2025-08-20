package com.kinalitosclothes.modelo;
import com.kinalitosclothes.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class VentasDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    public List<Ventas> listar() {
        String sql = "call sp_ListarVenta();";
        List<Ventas> lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Ventas v = new Ventas();
                v.setCodigoVenta(rs.getInt(1));
                v.setFechaVenta(rs.getDate(2));
                v.setTotalVenta(rs.getDouble(3));
                v.setClienteID(rs.getInt(4));
                lista.add(v);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }

    public int agregar(Ventas v) {
        String sql = "call sp_AgregarVenta(?, ?);";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setDouble(1, v.getTotalVenta());
            ps.setInt(2, v.getClienteID());
            ps.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

    public int eliminar(int codigoVenta) {
        String sql = "call sp_EliminarVenta(?);";
        resp = 0;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, codigoVenta);
            resp = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

    public Ventas buscar(int codigoVenta) {
        String sql = "call sp_BuscarVenta(?);";
        Ventas v = null;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, codigoVenta);
            rs = ps.executeQuery();
            if (rs.next()) {
                v = new Ventas();
                v.setCodigoVenta(rs.getInt(1));
                v.setFechaVenta(rs.getDate(2));
                v.setTotalVenta(rs.getDouble(3));
                v.setClienteID(rs.getInt(4));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return v;
    }

    public int actualizar(Ventas v) {
        String sql = "call sp_EditarVenta(?, ?);";
        resp = 0;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, v.getCodigoVenta());
            ps.setDouble(2, v.getTotalVenta());
            resp = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }    
}
