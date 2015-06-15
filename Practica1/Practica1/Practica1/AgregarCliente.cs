using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Practica1
{
    public partial class AgregarCliente : Form
    {

        

        public AgregarCliente()
        {
            InitializeComponent();
        }

        private void AgregarCliente_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'bdCliente.Cliente' Puede moverla o quitarla según sea necesario.
            this.clienteTableAdapter.Fill(this.bdCliente.Cliente);

        }
        ServiceReference1.ServiceSoapClient servicio = new ServiceReference1.ServiceSoapClient();
        
       

        private void btguardar_Click(object sender, EventArgs e)
        {
            int carnet, dpi,telefono,codlibro;
            string nombre, direccion;

            carnet = Convert.ToInt32(txtcarnet.Text);
            nombre = txtnombre.Text;
            dpi = Convert.ToInt32(txtdpi.Text);
            direccion = txtdireccion.Text;
            telefono = Convert.ToInt32(txttelefono.Text);
            codlibro = 0;

            String Tabla = "Cliente";
            String Campos = "No.Carnet, NombreC,DPI,Direccion,Telefono,Cod_Libro";
            String Valores = "'" + carnet + "','" + txtnombre.Text + "','" + dpi + "','" + txtdireccion.Text + "','" + telefono + "','" +codlibro+ "'";

            



            if (servicio.Registrar(Tabla, Campos, Valores))
            {

                MessageBox.Show("Cliente Guardado");
            }
            else
            {
                //Response.Write(cq.MostrarError);

            }

            

            txtcarnet.Text = "";
            txtnombre.Text = "";
            txtdpi.Text = "";
            txtdireccion.Text = "";
            txttelefono.Text = "";
            
            MessageBox.Show("Datos Guardados");


            dataGridView1.Update();
        
        }
       
       
    }
}
