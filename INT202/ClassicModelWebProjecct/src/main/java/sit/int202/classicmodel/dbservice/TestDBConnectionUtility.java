/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int202.classicmodel.dbservice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author INT202
 */
public class TestDBConnectionUtility {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Connection conn = DBConnectionUtility.getConnection();
        System.out.println(conn);
        PreparedStatement pstm
                = conn.prepareStatement("Select * from products where productName like ? or productLine like ?");
        pstm.setString(1, "%Har%");
        pstm.setString(2, "%classic%");
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            System.out.printf("%-10s %-45s %s\n", rs.getString(1), rs.getString(2), rs.getString(3));
        }
        rs.close();
        pstm.close();
        conn.close();

    }
}
