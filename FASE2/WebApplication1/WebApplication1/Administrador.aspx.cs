using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btcargararchivos_Click(object sender, EventArgs e)
        {
            btcargararchivos.Visible = true;
            btcarga.Visible = true;

            DetailsView1.Visible = false;
            Label2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DetailsView1.Visible = true;
            Label2.Visible = true;
            btcargararchivos.Visible = false;
            btcarga.Visible = false;
        }
    }
}