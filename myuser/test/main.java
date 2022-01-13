package myuser.test;

// class Main {
//     public static void main(String[] args) {
//         System.out.println("hello world");
//     }
// }
import jakarta.servlet.http.*;
import jakarta.servlet.*;
import java.io.*;

public class main extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");// setting the content type
        PrintWriter pw = res.getWriter();// get the stream to write the data

        // writing html in the stream
        pw.println("<html><body>");
        pw.println("<h1>This is a Java servlet</h1>");
        pw.printf("<p>Your IP address is %s<p>", req.getRemoteAddr());
        pw.println("</body></html>");

        pw.close();// closing the stream
    }
}