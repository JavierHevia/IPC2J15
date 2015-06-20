using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{

    public partial class Productos : System.Web.UI.Page
    {

        String Nombre, precio,d;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Nombre = GridView1.SelectedValue.ToString();
            precio=GridView1.SelectedRow.Cells[4].Text;
          

            Label1.Text = Nombre;
            Label2.Text = precio;
            TextBox1.Text = GridView1.SelectedRow.Cells[2].Text; 
        }
    }
}