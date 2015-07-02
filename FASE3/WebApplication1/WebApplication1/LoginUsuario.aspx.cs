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
                Response.Redirect("Clientes.aspx");
           
                }else{
                    MessageBox.Show("Error no es Cliente o no tiene autorización");
                }

                

            }else if (dprRol.Text == "Empleado" ){

                int codigo = Convert.ToInt32(txtusuario.Text);

                if (servicio.VerificarEmpleadoOAdministrador(codigo,contraseña, rol) == 1)
                {
                    Session["Empleado"] = codigo;
                    

                    MessageBox.Show("Bienvenido Empleado");
                    Response.Redirect("Empleados.aspx");

                }else {
                    MessageBox.Show("Error como Empleado");
                }
                
               
                

            }else if (dprRol.Text == "Administrador"){




                int codigo = Convert.ToInt32(txtusuario.Text);

                if (servicio.VerificarEmpleadoOAdministrador(codigo, contraseña, rol) == 1)
                {
                    Session["Administrador"] = codigo;
                   

                    MessageBox.Show("---Bienvenido Administrador---");
                    Response.Redirect("Administrador.aspx");

                   
                }
                else
                {
                    MessageBox.Show("Error como Administrador");
                }

            }
            else if (dprRol.Text == "Director")
            {


                int codigo = Convert.ToInt32(txtusuario.Text);

                if (servicio.VerificarEmpleadoOAdministrador(codigo, contraseña, rol) == 1)
                {
                    Session["director"] = codigo;

                    MessageBox.Show("---Bienvenido Director---");
                    Response.Redirect("Director.aspx");

                }
                else
                {
                    MessageBox.Show("Error como Director");
                }



            }



        }
    }
}