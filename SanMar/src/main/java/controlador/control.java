
package controlador;
import dao.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.*;
public class control extends HttpServlet {
    
    //Objetos de Control
    daoClientes daoCli = new daoClientes();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //RECOGER SOLICITUD
        int opc = Integer.parseInt(request.getParameter("opc"));

        //GESTIONAR FUNCIONES SOLICITUD
        if (opc == 1) {
            login(request, response);
        }
        
        if (opc == 2) {
            registroCliente(request, response);
        }

    }
   
    //ATENCIÓN DE SOLICITUDES POR FUNCIONES
    protected void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //RECOGEMOS DATOS
        String correo = request.getParameter("correo").trim();
        String pass = request.getParameter("pass").trim();
        
        //ABRIMOS SESION
        HttpSession ses = request.getSession();

        //VALIDAMOS CLIENTE
        Clientes p = daoCli.BuscarCliente(correo, pass);
        
        //VARIABLES LOCALES
        String pag = "";
        String aviso = "";
        
        //CONDICIONAL 
        if (p != null) {
            
            //ENVIAR DATOS DEL CLIENTE
            ses.setAttribute("datosCliente", p);
            
            //PAGINA PRINCIPAL DEL CLIENTE
            pag = "/pagPrincipal.jsp";
            
            //MENSAJE POSITIVO
            aviso = "swal('Acceso Permitido','Usuario identificado en la BD','success');";
            
            //ENVIAR EL AVISO EN ATRIBUTO
            request.setAttribute("aviso", aviso);
            
        } else {
            //MENSAJE NEGATIVO
            aviso = "swal('Correo o contraseña no validos','Intente de nuevo o use otro perfil.','error');";
            
            //ENVIAR EL AVISO EN ATRIBUTO
            request.setAttribute("aviso", aviso);
            
            //PAGINA LOGIN
            pag = "/LoginUsuario.jsp";
        }
        
        //REDIRIGE A LA PAGINA CORRESPONDIENTE
        request.getRequestDispatcher(pag).forward(request, response);
    }
    
    protected void registroCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //RECOGER DATOS DEL FORMULARIO
        String nom = request.getParameter("nom");
        String ape = request.getParameter("ape");
        String correo = request.getParameter("correo");
        String pass = request.getParameter("pass");
        String celular = request.getParameter("celular");
        
        //REGISTRAR CLIENTE
        daoCli.agregarCliente(nom, ape, correo, pass, celular);
                
        //PAGINA DE LOGIN
        String pag = "/LoginUsuario.jsp";
        
        //REDIRIGE A LA PAGINA CORRESPONDIENTE
        request.getRequestDispatcher(pag).forward(request, response);
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
