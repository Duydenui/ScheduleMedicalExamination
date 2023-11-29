package context;

import Utills.Constance;
import java.sql.Connection;
import java.sql.DriverManager;
 
public class DBContext {

    public Connection getConnection() throws Exception {
        String url = "jdbc:sqlserver://" + Constance.SERVERNAME + ":" + Constance.PORTNUMBER
                + ";databaseName=" + Constance.DATABASENAME;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, Constance.USER_ACCOUNT_DATABASE, Constance.USER_PASS_DATABASE);
    }

    public static void main(String[] args) {
        try {
            DBContext dBContext = new DBContext();
            if (dBContext.getConnection() != null) {
                System.out.println("Kết nối thành công");
            } else {
                System.out.println("Kết nối thất bại");
            }
        } catch (Exception ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);

        }
    }
}
