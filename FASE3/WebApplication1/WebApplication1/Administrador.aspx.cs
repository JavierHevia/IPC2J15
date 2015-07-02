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
    public partial class Administrador : System.Web.UI.Page
    {
       


      

        protected void btcargar_Click(object sender, EventArgs e)
        {

            try
            {

                CargarDatos(Label4.Text);
            }
            catch
            {
                Response.Write("Ocurri error debe cargar antes el archivo");
            }

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

      

        protected void btsubir_Click(object sender, EventArgs e)
        {


            if (fusubir.HasFile)
            {
                if (ChecarExtension(fusubir.FileName))
                {
                    fusubir.SaveAs(MapPath(fusubir.FileName));


                    Label3.Text = fusubir.FileName + " cargado exitosamente";

                    Label4.Text = MapPath( fusubir.FileName);
                }
            }
            else
            {
                Label3.Text = "Error al subir el archivo o no es el tipo .CSV";
            }








        }
        ServiceReference1.WebService1SoapClient servicio = new ServiceReference1.WebService1SoapClient();
        protected void btcargar_Click1(object sender, EventArgs e)
        {
            try
            {

                if (DropDownList1.Text == "Impuesto")
                {

                    CargarDatos(Label4.Text);
                    servicio.CargarCSVImpuesto(Label4.Text);

                }
                else if (DropDownList1.Text == "Empleado")
                {
                    CargarDatos(Label4.Text);
                    servicio.CargarCSVEmpleado(Label4.Text);

                }
                else
                {
                    MessageBox.Show("Error, no se puede subir ese tipo de archivo");
                }


            
            
            }
            catch
            {
                Response.Write("Ocurri error debe cargar antes el archivo");
            }

        }

      
    
    
    
    }
}