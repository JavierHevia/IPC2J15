using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace WebApplication1
{
    public partial class Director : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnuevoemple_Click(object sender, EventArgs e)
        {
         
        }

        protected void modificarempleado_Click(object sender, EventArgs e)
        {
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

        }


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

            GridView2.DataSource = tabla;
            GridView2.DataBind();
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





       
        ServiceReference1.WebService1SoapClient servicio = new ServiceReference1.WebService1SoapClient();
        protected void btsubircsv_Click(object sender, EventArgs e)
        {

            if (fsubircsv.HasFile)
            {
                if (ChecarExtension(fsubircsv.FileName))
                {
                    fsubircsv.SaveAs(MapPath(fsubircsv.FileName));


                    Label2.Text = fsubircsv.FileName + " cargado exitosamente";

                    Label3.Text = MapPath(fsubircsv.FileName);
                }
            }
            else
            {
                Label2.Text = "Error al subir el archivo o no es el tipo .CSV";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                CargarDatos(Label3.Text);
                servicio.CargarCSVEmpleado(Label3.Text);
                SqlDataSource1.Update();


            }
            catch
            {
                Response.Write("Ocurri error debe cargar antes el archivo");
            }

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView3.SelectedRow.Cells[1].Text; 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            try
            {

                SqlDataSource3.Update();

            }
            catch
            {
                
            }


        }

        protected void btdespedir_Click(object sender, EventArgs e)
        {
            string despedir= "Despedido";
            int codigo = Convert.ToInt32(dddespedir.Text);

            servicio.DespedirEmpleado(codigo,despedir);

            MessageBox.Show("Empleado Despedido");
            
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            int codigo, dpie, codsucursal;
            float sueldo;

            codigo = Convert.ToInt32(txtcodigo.Text);
            dpie = Convert.ToInt32(txtdpi.Text);
            codsucursal = Convert.ToInt32(txtsucursal.Text);
            sueldo = float.Parse(txtsueldo.Text);

            string estado = "Contratado";


            String Tabla = "Empleado";
            String Campos = "Cod_Empleado,NombreE,Suledo,DPI,Contraseña,Puesto,Cod_Sucursal,Estado";
            String Valores = "'" + codigo + "','" + txtnombre.Text + "','" + sueldo + "','" + dpie + "','"
          
              + txtcontrasena.Text + "','" + txtpuesto.Text + "','" + codsucursal + "','" + estado +"'";


            if (servicio.Registrar(Tabla, Campos, Valores))
            {

                MessageBox.Show("Datos Guardados");

               
            }
            else
            {

                MessageBox.Show("Datos No Guardados");

            }
        
        
        
        
        
        }
    }
}