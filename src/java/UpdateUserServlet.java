import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updateProfile")
public class UpdateUserServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form parameters
        String userId = request.getParameter("userId");
        String fullName = request.getParameter("fullname");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        String mobile = request.getParameter("mobile");

        // Database connection parameters
        String jdbcUrl = "jdbc:sqlserver://localhost:1433;databaseName=ChildCareSystem";
        String dbUser = "sa";
        String dbPassword = "123";

        try {
            // Load the SQL Server JDBC driver
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            // Create a database connection
            Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // SQL query to update the user's information
            String sql = "UPDATE Users SET user_fullname=?, user_gender=?, user_address=?, user_password=?, user_mobile=? WHERE user_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, fullName);
            statement.setString(2, gender);
            statement.setString(3, address);
            statement.setString(4, password);
            statement.setString(5, mobile);
            statement.setInt(6, Integer.parseInt(userId));

            // Execute the update query
            int rowsAffected = statement.executeUpdate();

            // Close the database connection
            statement.close();
            connection.close();

            if (rowsAffected > 0) {
                // User information updated successfully
                response.sendRedirect("profile.jsp"); // Redirect to the user's profile page
            } else {
                // Handle the case where no rows were updated
                response.sendRedirect("error.jsp");
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle any exceptions here
            response.sendRedirect("error.jsp");
        }
    }
}
