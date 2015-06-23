using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace WebApplication1
{
    public partial class Empleados : System.Web.UI.Page
    {
        public String valorfinal,apellido,direccion;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btaprobar_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            Label1.Visible = true;



            lbmensaje.Text = "Autorización de Clientes";
            DetailsView2.Visible = false;
            DetailsView1.Visible = false;

            Label2.Visible = false;
            lbusuarios.Visible = false;
            txtcasilla.Visible = false;
            btfactura.Visible = false;
            gvpaquetes.Visible = false;
            GridView3.Visible = false;
            Label3.Visible = false;

            Label4.Visible = false;
            txtbuscar.Visible = false;
            GridView4.Visible = false;
            Button3.Visible = false;
            Button5.Visible = false;
            Panel1.Visible = false;
            Panel2.Visible = false;
        }

        protected void btpedidos_Click(object sender, EventArgs e)
        {

            DetailsView2.Visible = true;
            Panel2.Visible = true;

            lbmensaje.Text = "Registrar Paquetes";
            GridView1.Visible = false;
            Label1.Visible = false;
            DetailsView1.Visible = false;

            Label2.Visible = false;
            lbusuarios.Visible = false;
            txtcasilla.Visible = false;
            btfactura.Visible = false;
            gvpaquetes.Visible = false;
            GridView3.Visible = false;
            Label3.Visible = false;

            Label4.Visible = false;
            txtbuscar.Visible = false;
            GridView4.Visible = false;
            Button3.Visible = false;
            Button5.Visible = false;
            Panel1.Visible = false;
        }

        protected void añadirlote_Click(object sender, EventArgs e)
        {
            DetailsView1.Visible = true;

            DetailsView2.Visible = false;

            lbmensaje.Text = "Añadir Lote";
            GridView1.Visible = false;
            Label1.Visible = false;

            Label2.Visible = false;
            lbusuarios.Visible = false; 
            txtcasilla.Visible = false;
            btfactura.Visible = false;
            gvpaquetes.Visible = false;
            GridView3.Visible = false;
            Label3.Visible = false;

            Label4.Visible = false;
            txtbuscar.Visible = false;
            GridView4.Visible = false;
            Button3.Visible = false;
            Button5.Visible = false;
            Panel1.Visible = false;
            Panel2.Visible = false;
        }

        protected void btfactura_Click(object sender, EventArgs e)
        {
            String NombreUsuario,nombre;
          
            SqlConnection con21 = new SqlConnection("Data Source=SERGIO-PC\\SQL2012;Initial Catalog=PFase2;Integrated Security=True");
            String nombre1 = "Select * from Cliente where CasillaInter='" + txtcasilla.Text + "' ";
            SqlCommand comando1 = new SqlCommand(nombre1, con21);
            con21.Open();
            SqlDataReader leer1 = comando1.ExecuteReader();
            if (leer1.Read() == true)
            {

                NombreUsuario = leer1["UsuarioC"].ToString();
                lbusuarios.Text = NombreUsuario;
                nombre = leer1["NombreC"].ToString();
                lbapellido.Text = leer1["ApellidoC"].ToString();
                lbdireccion.Text = leer1["Direccion"].ToString();
                

            }
            else
            {
                MessageBox.Show("Error en sacar datos");
            }
            con21.Close();


            gvpaquetes.Visible = true;
            Button5.Visible = true;
            string no = "Si";
            int casilla = Convert.ToInt32(txtcasilla.Text);

            servicio.Pagosiono(casilla,no);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            lbusuarios.Visible = true;
            txtcasilla.Visible = true;
            btfactura.Visible = true;
            lbmensaje.Text = "Facturar";

            DetailsView1.Visible = false;
            DetailsView2.Visible = false;
            gvpaquetes.Visible = false;
            Label3.Visible = false;
            GridView3.Visible = false;
            GridView1.Visible = false;
            Label4.Visible = false;
            txtbuscar.Visible = false;
            GridView4.Visible = false;
            Button3.Visible = false;
            Button5.Visible = false;
            Panel1.Visible = false;
            Panel2.Visible = false;
        }

        protected void gvpaquetes_SelectedIndexChanged(object sender, EventArgs e)
        {

            lbtotal.Text = gvpaquetes.SelectedRow.Cells[2].Text; 
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView3.Visible = true;
            Label3.Visible = true;


            DetailsView2.Visible = false;

            lbmensaje.Text = "Devoluciones";
            GridView1.Visible = false;
   
            Label1.Visible = false;
            DetailsView1.Visible = false;

            Label2.Visible = false;
            lbusuarios.Visible = false;
            txtcasilla.Visible = false;
            btfactura.Visible = false;
            gvpaquetes.Visible = false;
       
            gvpaquetes.Visible = false;


            Label4.Visible = false;
            txtbuscar.Visible = false;
            GridView4.Visible = false;
            Button3.Visible = false;
            Button5.Visible = false;
            Panel1.Visible = false;
            Panel2.Visible = false;
        }

      
        protected void txtbuscar_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource7.Update();
            }
            catch (Exception except)
            {
                // Handle the Exception.
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label4.Visible = true;
            txtbuscar.Visible = true;
            GridView4.Visible = true;
            Button3.Visible = true;




            GridView1.Visible = false;
            Label1.Visible = false;



            lbmensaje.Text = "Buscar Cliente";
            DetailsView2.Visible = false;
            DetailsView1.Visible = false;

            Label2.Visible = false;
            lbusuarios.Visible = false;
            txtcasilla.Visible = false;
            btfactura.Visible = false;
            gvpaquetes.Visible = false;
            GridView3.Visible = false;
            Label3.Visible = false;
            Button5.Visible = false;
            Panel1.Visible = false;
            Panel2.Visible = false;
        }

      


        // creará la tabla de acuerdo a la cantidad de columnas 
        //que se obtengan y que se hayan guardado en un arreglo de tipo string.
        private DataTable CrearTabla(String fila)
        {
            int cantidadColumnas;
            DataTable tabla = new DataTable("Datos");
            String[] valores = fila.Split(new char[] { ',' });
            cantidadColumnas = valores.Length;
            int idx = 0;
            foreach (String val in valores)
            {
                String nombreColumna = String.Format("{0}", idx++);
                tabla.Columns.Add(nombreColumna, Type.GetType("System.String"));
            }
            return tabla;
        }
        //método AgregarFila:
        private DataRow AgregarFila(String fila, DataTable tabla)
        {
            int cantidadColumnas = 100;
            String[] valores = fila.Split(new char[] { ',' });
            Int32 numeroTotalValores = valores.Length;
            if (numeroTotalValores > cantidadColumnas)
            {
                Int32 diferencia = numeroTotalValores - cantidadColumnas;
                for (Int32 i = 0; i < diferencia; i++)
                {

                    String nombreColumna = String.Format("{0}", (cantidadColumnas + i));
                    tabla.Columns.Add(nombreColumna, Type.GetType("System.String"));
                }
                cantidadColumnas = numeroTotalValores;
            }
            int idx = 0;
            DataRow dfila = tabla.NewRow();
            foreach (String val in valores)
            {
                String nombreColumna = String.Format("{0}", idx++);
                dfila[nombreColumna] = val.Trim();
            }
            tabla.Rows.Add(dfila);
            return dfila;
        }
        //Teniendo listos los primeros dos métodos de crearTabla y agregarFilas a la tabla,
        private void CargarDatos(string strm)
        {
            DataTable tabla = null;
            StreamReader lector = new StreamReader(strm);
            String fila = String.Empty;
            Int32 cantidad = 0;
            do
            {
                fila = lector.ReadLine();
                if (fila == null)
                {
                    break;
                }
                if (0 == cantidad++)
                {
                    tabla = this.CrearTabla(fila);
                }
                this.AgregarFila(fila, tabla);
            } while (true);

            GridView5.DataSource = tabla;
            GridView5.DataBind();
        }

        // método de tipo bool, que determinará que tipo de archivo solo quiero que suba el usuario.
        bool ChecarExtension(string fileName)
        {
            string ext = Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".csv":
                    return true;
                default:
                    return false;
            }
        }






        protected void Button6_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                if (ChecarExtension(FileUpload1.FileName))
                {
                    FileUpload1.SaveAs(MapPath(FileUpload1.FileName));


                    Label5.Text = FileUpload1.FileName + " cargado exitosamente";

                    Label6.Text = MapPath(FileUpload1.FileName);
                }
            }
            else
            {
                Label5.Text = "Error al subir el archivo o no es el tipo .CSV";
            }



        }
        ServiceReference1.WebService1SoapClient servicio = new ServiceReference1.WebService1SoapClient();

        protected void Button7_Click(object sender, EventArgs e)
        {
            try
            {

                CargarDatos(Label6.Text);
                servicio.CargarCSVImpuesto(Label4.Text);



            }
            catch
            {
                Response.Write("Ocurri error debe cargar antes el archivo");
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            //hacer factura
            iTextSharp.text.Document pdfDoc = new iTextSharp.text.Document(PageSize.A4, 10, 10, 10, 10);

            iTextSharp.text.pdf.PdfWriter.GetInstance(pdfDoc, System.Web.HttpContext.Current.Response.OutputStream);

            string cadenaFinal = "";
            pdfDoc.Open();
            string strContent = cadenaFinal;
            pdfDoc.Add(new Paragraph("                                                                                                                  FACTURA       No. 001"));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                 Quetzal Expres                               "));
            pdfDoc.Add(new Paragraph("            10ma calle 20-15 Zona 15"));
            pdfDoc.Add(new Paragraph("              www.QuetzalExpress.com"));
            pdfDoc.Add(new Paragraph("             Nit Empresa: 21240000-1"));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));

            pdfDoc.Add(new Paragraph("NOMBRE:" + lbusuarios.Text + "   APELLIDO:  " + lbapellido.Text + "    "));


            pdfDoc.Add(new Paragraph("Dirección:  " + lbdireccion.Text + "                                "));
            pdfDoc.Add(new Paragraph("                                                              "));

            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                                              "));
            pdfDoc.Add(new Paragraph("                                     TOTAL: " + lbtotal.Text));

            //Read string contents using stream reader and convert html to parsed conent 
            var parsedHtmlElements = HTMLWorker.ParseToList(new StringReader(strContent), null);

            //Get each array values from parsed elements and add to the PDF document 
            foreach (var htmlElement in parsedHtmlElements)
                pdfDoc.Add(htmlElement as IElement);

            //Close your PDF 
            pdfDoc.Close();

            Response.ContentType = "application/pdf";

            //Set default file Name as current datetime 
            Response.AddHeader("content-disposition", "attachment; filename=FACTURA.pdf");
            System.Web.HttpContext.Current.Response.Write(pdfDoc);

            Response.Flush();
            Response.End();




            float total = float.Parse(lbtotal.Text);

            //Guardar base
            String Tabla = "Factura";
            String Campos = "Usuario,ValorTotal";
            String Valores = "'" + lbusuarios.Text + "','" + total + "'";


            if (servicio.Registrar(Tabla, Campos, Valores))
            {

                MessageBox.Show("Factura Guardada");

                
            }
            else
            {

                MessageBox.Show("Error Conexion");

            }


        }
    }
}