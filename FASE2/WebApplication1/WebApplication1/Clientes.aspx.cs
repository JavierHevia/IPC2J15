using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState; 


using System.Web.SessionState;
using System.Windows.Forms; 

namespace WebApplication1
{
    public partial class Clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // txtnombre.Text = Session["Usuario"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;

            GridView2.Visible = false;


            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;

            txttotal.Visible = false;
            txtpeso.Visible = false;
            txtnombre.Visible = false;
            txtcostopaquete.Visible = false;
            ddImpuesto.Visible = false;

            c.Visible = false;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            GridView1.Visible = false;

            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;

            txttotal.Visible = false;
            txtpeso.Visible = false;
            txtnombre.Visible = false;
            txtcostopaquete.Visible = false;
          
            ddImpuesto.Visible = false;

            c.Visible = false;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
         
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;

            txttotal.Visible = true;
            txtpeso.Visible = true;
            txtnombre.Visible = true;
            txtcostopaquete.Visible = true;
  
            c.Visible = true;
            ddImpuesto.Visible = true;

            GridView1.Visible = false;
            GridView2.Visible = false;
        }

        protected void Calcular_Click(object sender, EventArgs e)
        {

            double costoinicio,peso,total,calculo,C1;
            double C2;

            costoinicio = float.Parse(txtcostopaquete.Text);
            peso = float.Parse(txtpeso.Text);

            if (ddImpuesto.Text =="VideoJuegos Blu-Ray 15%")
            {
                
                C1 = costoinicio+(25*peso);
                C2 = (costoinicio * (0.15));
                total = C1 + C2;
                txttotal.Text = total.ToString();
            }
            else if (ddImpuesto.Text == "VideoCintas 15%")
            {
                C1 = costoinicio + (25 * peso);
                C2 = (costoinicio * (0.15));
                total = C1 + C2;
                txttotal.Text = total.ToString();
            }
            else if (ddImpuesto.Text == "Art.Cuero 15%")
            {
                C1 = costoinicio + (25 * peso);
                C2 = (costoinicio * (0.15));
                total = C1 + C2;
                txttotal.Text = total.ToString();


            }
            else if (ddImpuesto.Text == "Telefonia, 15%")
            {
                C1 = costoinicio + (25 * peso);
                C2 = (costoinicio * (0.15));
                total = C1 + C2;
                txttotal.Text = total.ToString();
            }
            else if (ddImpuesto.Text == "Deportivo 10%")
            {
                C1 = costoinicio + (25 * peso);
                C2 = (costoinicio * (0.1));
                total = C1 + C2;
                txttotal.Text = total.ToString();

            }
            else if (ddImpuesto.Text == "Zapatos 15%")
            {
                C1 = costoinicio + (25 * peso);
                C2 = (costoinicio * (0.15));
                total = C1 + C2;
                txttotal.Text = total.ToString();

            }
            else
            {
                txttotal.Text = "Error";
            }

            
       }
    }
}