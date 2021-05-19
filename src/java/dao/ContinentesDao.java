/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Connection.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Continentes;



public class ContinentesDao {

    private Connection connection;

    public ContinentesDao() {
        connection = Conexao.getConnection();
    }

    public void addContinente(Continentes continentes) {
        Connection con = Conexao.getConnection();
        
        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement("INSERT INTO continente (nome,populacao,tamanho)VALUES(?,?,?)");
            stmt.setString(1, continentes.getNomeCont());
            stmt.setLong(2, continentes.getPopulacaoCont());
            stmt.setLong(3, continentes.getTamanhoCont());
            stmt.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
    


    public void deleteContinentes(int cdCont) {
        String            sqlString = "update continente set nome=?, populacao=?, tamanho=? where cd_continente=?";
        PreparedStatement stm       = null;
        
        try {
            stm = connection.prepareStatement("delete from continente where cd_continente=?");
            // Parameters start with 1
            stm.setInt(1, cdCont);
            stm.executeUpdate();
            stm.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void updateContinentes(Continentes continentes) {
        
        PreparedStatement stm       = null;
        
        try {
            stm = connection.prepareStatement("update continente set nome=?, populacao=?, tamanho=? where cd_continente=?");
            
            stm.setString(1, continentes.getNomeCont());
            stm.setLong(2, continentes.getPopulacaoCont());
            stm.setLong(3, continentes.getTamanhoCont());
            stm.setInt(4, continentes.getCdCont());
            stm.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        
    }
     
    

    public List<Continentes> getAllContinentes() {
        List<Continentes> listaContinentes = new ArrayList<Continentes>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select * from continente");
            while (rs.next()) {
                Continentes continentes = new Continentes();  
                continentes.setCdCont(rs.getInt("cd_continente"));
                continentes.setNomeCont(rs.getString("nome"));
                continentes.setPopulacaoCont(rs.getLong("populacao"));
                continentes.setTamanhoCont(rs.getLong("tamanho"));
                listaContinentes.add(continentes);
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listaContinentes;
    }

    public Continentes getContinentesByCd(int cdCont) {
        Continentes continentes = new Continentes();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from continente where cd_continente=?");
            preparedStatement.setInt(1, cdCont);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                continentes.setCdCont(rs.getInt("cd_continente"));
                continentes.setNomeCont(rs.getString("nome"));
                continentes.setPopulacaoCont(rs.getLong("populacao"));
                continentes.setTamanhoCont(rs.getLong("tamanho"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return continentes;
    }
}