/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int202.classicmodel.dbservice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author INT202
 */
public class DBConnectionUtility {

    private static boolean isLoaded;
    private final static String URL = "jdbc:mysql://localhost:3306/classicmodels?verifyServerCertificate=false&useSSL=false&allowPublicKeyRetrieval=true";

    public static Connection getConnection() {
        Connection conn = null;
        try {
            if (!isLoaded) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                isLoaded = true;
            }
            conn = DriverManager.getConnection(URL, "root",  "tooRLQSyM");
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println(ex);
        }
        return conn;
    }

    public static PreparedStatement getStatement(String sqlCommand, String[] parameters) {
        PreparedStatement pstm = null;
        try {
            pstm = getConnection().prepareStatement(sqlCommand);
            for (int i = 0; i < parameters.length; i++) {
                pstm.setString(i + 1, parameters[i]);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return pstm;
    }

}
