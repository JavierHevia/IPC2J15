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
    public partial class Pedidos : Form
    {
        public Pedidos()
        {
            InitializeComponent();
            this.txtfechai.Text = this.monthCalendar1.SelectionRange.Start.ToShortDateString();
        }

        private void Pedidos_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'whizzDataSet3.Prestamo' Puede moverla o quitarla según sea necesario.
            this.prestamoTableAdapter1.Fill(this.whizzDataSet3.Prestamo);
            // TODO: esta línea de código carga datos en la tabla 'whizzDataSet2.Libro' Puede moverla o quitarla según sea necesario.
            this.libroTableAdapter1.Fill(this.whizzDataSet2.Libro);
            // TODO: esta línea de código carga datos en la tabla 'whizzDataSet2libro.Libro' Puede moverla o quitarla según sea necesario.
            this.libroTableAdapter.Fill(this.whizzDataSet2libro.Libro);
            // TODO: esta línea de código carga datos en la tabla 'whizzDataSetPrestamo.Prestamo' Puede moverla o quitarla según sea necesario.
      

        }
        ServiceReference1.ServiceSoapClient servicio = new ServiceReference1.ServiceSoapClient();
        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            dgpedidos.DataSource = servicio.BuscarPedido(txtpedidos.Text);

            dgpedidos.DataMember = "Libro";




        }

        private void textBox1_TextChanged_1(object sender, EventArgs e)
        {

        }

        private void btperdir_Click(object sender, EventArgs e)
        {


            int codl, nocarnet;

            codl = Convert.ToInt32(txtCodLibro.Text);
            nocarnet = Convert.ToInt32(txtNoCarnet.Text);
            String pr = "Prestamo";

            String Tabla = "Prestamo";
            String Campos = "Tipo,FechaInicio,FechaFin,Cod_Libro,[No.Carnet]";
            String Valores = "'" + pr + "','" + txtfechai.Text + "','" + txtfechafin.Text + "','" + codl + "','" + nocarnet  + "'";

            if (servicio.Registrar(Tabla, Campos, Valores))
            {

                MessageBox.Show("Pedido Guardado");
              
                dgpedidos.Update();

                txtNoCarnet.Text = "";
                txtCodLibro.Text = "";
                txtfechafin.Text = "";
                txtfechai.Text = "";
                


            }
            else
            {
                //Response.Write(cq.MostrarError);
                MessageBox.Show("Error");

            }



            
        }

        private void txtfechai_TextChanged(object sender, EventArgs e)
        {
           
        }

        private void monthCalendar1_DateChanged(object sender, DateRangeEventArgs e)
        {
            txtfechafin.Text = monthCalendar1.SelectionEnd.ToShortDateString(); 
        }

       

    
    }
}
