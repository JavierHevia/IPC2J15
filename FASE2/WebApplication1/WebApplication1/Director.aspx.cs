using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Director : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnuevoemple_Click(object sender, EventArgs e)
        {
            fvnuevoempleado.Visible = true;
            dvmodificaremp.Visible = false;
        }

        protected void modificarempleado_Click(object sender, EventArgs e)
        {
            dvmodificaremp.Visible = true;
            fvnuevoempleado.Visible = false;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            fsubircsv.Visible = true;
            btsubircsv.Visible = true;

            dvmodificaremp.Visible = false;
            fvnuevoempleado.Visible = false;

        }
    }
}