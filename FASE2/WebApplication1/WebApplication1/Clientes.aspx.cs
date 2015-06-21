using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState; 


using System.Windows.Forms;
using System.Data.SqlClient; 

namespace WebApplication1
{
    public partial class Clientes : System.Web.UI.Page
    {
        public float comision33, pesolb33, impu;
        public string codigo;
        protected void Page_Load(object sender, EventArgs e)
        {
           txtnombre.Text = Session["Usuario"].ToString();
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
            DropDownList1.Visible = false;
            ddImpuesto.Visible = false;
            GridView3.Visible = false;
            lbmostrarproducto.Visible = false;

            c.Visible = false;
            lbmensaje.Text = "Paquetes de Estados Unidos";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            GridView1.Visible = false;

            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            lbmensaje.Text = "Edición de Datos";

            txttotal.Visible = false;
            txtpeso.Visible = false;
            txtnombre.Visible = false;
            txtcostopaquete.Visible = false;
            DropDownList1.Visible = false;
            GridView3.Visible = false;
            lbmostrarproducto.Visible = false;
          
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
            DropDownList1.Visible = true;

            GridView3.Visible = false;
            lbmostrarproducto.Visible = false;

            GridView1.Visible = false;
            GridView2.Visible = false;

            lbmensaje.Text = "Cotización";
        }

        protected void Calcular_Click(object sender, EventArgs e)
        {

            float costoinicio, peso, total, C1, C2, C3;
         
          

            //Verificación los campos de cobros

            SqlConnection con2 = new SqlConnection("Data Source=SERGIO-PC\\SQL2012;Initial Catalog=PFase2;Integrated Security=True");
            String nombre = "Select * from Sede where Pais='" + DropDownList1.Text + "' ";
            SqlCommand comando = new SqlCommand(nombre, con2);
            con2.Open();
            SqlDataReader leer = comando.ExecuteReader();
            if (leer.Read() == true)
            {

                comision33 = float.Parse(leer["Comision"].ToString());
                pesolb33 = float.Parse(leer["CobroLb"].ToString());




            }
            else {
                MessageBox.Show("dddd");
            }
            con2.Close();

// verifica campos de impuestos
            SqlConnection con21 = new SqlConnection("Data Source=SERGIO-PC\\SQL2012;Initial Catalog=PFase2;Integrated Security=True");
            String nombre1 = "Select * from Impuesto where Categoria='" + ddImpuesto.Text + "' ";
            SqlCommand comando1 = new SqlCommand(nombre1, con21);
            con21.Open();
            SqlDataReader leer1 = comando1.ExecuteReader();
            if (leer1.Read() == true)
            {

                impu = float.Parse(leer1["Impuesto"].ToString());
                

            }
            else
            {
                MessageBox.Show("dddd");
            }
            con21.Close();




            costoinicio = float.Parse(txtcostopaquete.Text);
            peso = float.Parse(txtpeso.Text);

            //if (ddImpuesto.Text == "Accesorio de Telefonia")
            //{
              
                
                C1 = costoinicio+(peso*pesolb33);
                C2 = (costoinicio * ((comision33/100)));
                C3 = costoinicio * (impu/100);
                total = C1 + C2+ C3;
                txttotal.Text = total.ToString();
            ////}
            ////else if (ddImpuesto.Text == "Videocintas")
            ////{

            //    C1 = costoinicio + (peso * pesolb33);
            //    C2 = (costoinicio * (comision33 / 100));
            //    C3 = costoinicio * (impu / 100);
            //    total = C1 + C2+ C3;
            //    txttotal.Text = total.ToString();

            //}
            //else if (ddImpuesto.Text == "Articulos de Cuero")
            //{
            //    C1 = costoinicio + (peso * pesolb33);
            //    C2 = (costoinicio * (comision33 / 100));
            //    C3 = costoinicio * (impu / 100);
            //    total = C1 + C2 + C3;
            //    txttotal.Text = total.ToString();


            //}
            //else if (ddImpuesto.Text == "Zapatos")
            //{
            //    C1 = costoinicio + (peso * pesolb33);
            //    C2 = (costoinicio * (comision33 / 100));
            //    C3 = costoinicio * (impu / 100);
            //    total = C1 + C2 + C3;
            //    txttotal.Text = total.ToString();
            //}
            //else if (ddImpuesto.Text == "Videojuegos Blu-Ray")
            //{
            //    C1 = costoinicio + (peso * pesolb33);
            //    C2 = (costoinicio * (comision33 / 100));
            //    C3 = costoinicio * (impu / 100);
            //    total = C1 + C2 + C3;
            //    txttotal.Text = total.ToString();

          
            //}


            //else
            //{
            //    txttotal.Text = "Error";
            //}



            
       }

        protected void ddImpuesto_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbmostrarproducto.Visible = true;
            GridView3.Visible = true;
            codigo = GridView1.SelectedRow.Cells[1].Text;
            lbmostrarproducto.Text = "Praquete elegido: "+codigo;

        }
    }
}