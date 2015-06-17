using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Web.SessionState; 

namespace WebApplication1
{
    public partial class LoginUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ServiceReference1.WebService1SoapClient servicio = new ServiceReference1.WebService1SoapClient();
        protected void Button1_Click(object sender, EventArgs e)
        {
            String usuario, contraseña,rol;

            usuario = txtusuario.Text;
            contraseña = txtcontraseña.Text;
            rol = dprRol.Text;

            if (dprRol.Text=="Cliente"){
                

            if (servicio.VerificarUsuario(usuario, contraseña) == 1)
            {
                Session["Usuario"] = usuario;

                MessageBox.Show("Bienvenido");
           
                }else{
                    MessageBox.Show("Error no es Cliente");
                }

                

            }else if (dprRol.Text == "Empleado" | dprRol.Text == "Administrador"){

                int codigo = Convert.ToInt32(txtusuario.Text);

                if (servicio.VerificarEmpleadoOAdministrador(codigo,contraseña, rol) == 1)
                {
                    Session["Cliente"] = codigo;

                    MessageBox.Show("Bienvenido Empleado/Administrador");

                }
                
                
                
                
                
                
                
                
                
                
                else
                {
                    MessageBox.Show("Error no estas en el sistema");
                
                
                }


            }



        }
    }
}