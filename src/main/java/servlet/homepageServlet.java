/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Post;

/**
 *
 * @author User
 */
public class homepageServlet extends HttpServlet {

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
         javax.persistence.Query query = em.createNamedQuery("Post.findAll");
               
          String sql = "SELECT p FROM Post p ORDER BY p.postId DESC";
          Query q = em.createQuery(sql);
          
         {
              List <Post> ps =q.getResultList().subList(0,3);
              HttpSession session = request.getSession();
                
               session.setAttribute("ps",ps);
               request.getRequestDispatcher("/index.jsp").forward(request, response);
          }
          
//String sql4 = "SELECT COUNT(c) FROM Comment c WHERE c.commentPK.postpostid = :id  " ; 
//        Query qry4 =em.createQuery(sql4);
//        qry4.setParameter("id",id);
//        long numm =  (long) qry4.getSingleResult();
//        
//        int num = (int) numm;
 
          
               
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
