/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Post;
import model.UserInfo;

/**
 *
 * @author BALL IT24
 */
@WebServlet(name = "editPost", urlPatterns = {"/editPost"})
public class editPostServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("Ghosttales_PU");
        EntityManager em = emf.createEntityManager();

        HttpSession session = request.getSession();

        String postid =  request.getParameter("id");
        System.out.println("1........."+postid);
        int post_id = Integer.parseInt(postid);
        System.out.println("---------------1"+post_id);
        String username = (String) session.getAttribute("userr");
        UserInfo user = em.find(UserInfo.class, username);
        System.out.println("--------------------2"+user);
        String new_title = request.getParameter("title");
        System.out.println("-------------3"+new_title);
        String new_content = request.getParameter("content");
        LocalDate today = LocalDate.now();
        System.out.println("--------------------4"+new_content);
if(user!=null){
        String EDIT = "UPDATE  Post p SET p.title=' " + new_title + " ' where p.postId="+ post_id +"";
        String EDIT2 = "UPDATE  Post p SET p.content=' " + new_content + " ' where p.postId=" + post_id + "";
//        String EDIT3 = "UPDATE  Post p SET p.updatetime=" + today + " where p.postId=" + post_id + "";

        Query q = em.createQuery(EDIT);
        Query q2 = em.createQuery(EDIT2);
//        Query q3 = em.createQuery(EDIT3);

        em.getTransaction().begin();
        q.executeUpdate();
        q2.executeUpdate();
//        q3.executeUpdate();
        em.getTransaction().commit();
         request.getRequestDispatcher("/profile").forward(request, response);
}
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         processRequest(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
