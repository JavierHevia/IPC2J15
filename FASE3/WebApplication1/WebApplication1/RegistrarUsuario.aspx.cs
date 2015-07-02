using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace WebApplication1
{
    public partial class RegistrarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ServiceReference1.WebService1SoapClient servicio = new ServiceReference1.WebService1SoapClient();

        protected void LogIn(object sender, EventArgs e)
        {

           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int dpi, telefono, telefono1,tarjeta, casilla;


            dpi = Convert.ToInt32(txtdpi.Text);
            telefono = Convert.ToInt32(txtetelefono.Text);
            telefono1 = Convert.ToInt32(txttelefono1.Text);
            tarjeta = Convert.ToInt32(txtNoTarjeta.Text);
            casilla = 0;

            String Tabla = "Cliente";
            String Campos = "UsuarioC,Contraseña,NombreC,ApellidoC,DPI,Direccion,NoTarjeta,TipoTarjeta,Telefono,Telefono1,NoCasilla";
            String Valores = "'" + txtusuarioc.Text + "','" + txtcontraseñac.Text + "','" + txtnombrec.Text + "','" + txtapellido.Text + "','" + dpi + "','" +

            txtdirección.Text + "','" + tarjeta + "','" + dptipotarjeta.Text + "','" + telefono + "','" + telefono1 + "','" + casilla + "'";


            if (servicio.Registrar(Tabla, Campos, Valores))
            {

                MessageBox.Show("Buena Conexion");

                txtusuarioc.Text = "";
                txtcontraseñac.Text = "";
                txtnombrec.Text = "";
                txtapellido.Text = "";
                txtdirección.Text = "";
                dptipotarjeta.Text = "";
                txtdpi.Text = "";
                txtetelefono.Text = "";
                txttelefono1.Text = "";
                txtNoTarjeta.Text = "";
            }
            else
            {

                MessageBox.Show("Error Conexion");

            }
        }

     
    }
}