using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Empleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btaprobar_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            Label1.Visible = true;



            lbmensaje.Text = "Autorización de Clientes";
            GridView2.Visible = false;
            DetailsView1.Visible = false;

        }

        protected void btpedidos_Click(object sender, EventArgs e)
        {
            
            GridView2.Visible = true;

            lbmensaje.Text = "Registrar Paquetes";
            GridView1.Visible = false;
            Label1.Visible = false;
            DetailsView1.Visible = false;
        }

        protected void añadirlote_Click(object sender, EventArgs e)
        {
            DetailsView1.Visible = true;

            GridView2.Visible = false;

            lbmensaje.Text = "Añadir Lote";
            GridView1.Visible = false;
            Label1.Visible = false;

        }
    }
}