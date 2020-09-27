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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserInfo;

/**
 *
 * @author kankkm
 */
@WebServlet(name = "loginservlet", urlPatterns = {"/login"})
public class loginservlet extends HttpServlet {

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
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("com.mycompany_Ghosttales_war_1.0-SNAPSHOTPU");
        EntityManager em = emf.createEntityManager();
       // Query query = em.createNamedQuery("User.findAll");
       // java.util.List<User> rs = query.getResultList();       
//for (User r:rs){
          // System.out.println(r.getName());     
       String username = request.getParameter("username");
     String password = request.getParameter("password");
      //int name = Integer.parseInt(username);
      UserInfo u =em.find(UserInfo.class, username);
      //Query u =em.createNamedQuery("User.findAll");
        
      if (u != null && u.getPassword().equals(password) ) {
            HttpSession session = request.getSession();
            session.setAttribute("logUser", u.getUsername());
            request.getRequestDispatcher("welcome.jsp").forward(request, response);
        } else {
            request.setAttribute("Message", "ไม่มีชื่อผู้ใช้นี้ หรือ รหัสผ่านไม่ถูกต้อง");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            
            
      
        
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
