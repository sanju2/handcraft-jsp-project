<%@page import="java.sql.*" %>
<%
        String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/handcraft", "root", "");
        pst = con.prepareStatement("delete from orders where id = ?");
        pst.setString(1, id);
        pst.executeUpdate();
        String redirectURL = "order-details.jsp";
        response.sendRedirect(redirectURL);
%>
<script>
    alert("Record Deleted");
</script>