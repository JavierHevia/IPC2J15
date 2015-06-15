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
        }

        private void Pedidos_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'whizzDataSet2.Libro' Puede moverla o quitarla según sea necesario.
            this.libroTableAdapter1.Fill(this.whizzDataSet2.Libro);
            // TODO: esta línea de código carga datos en la tabla 'whizzDataSet2libro.Libro' Puede moverla o quitarla según sea necesario.
            this.libroTableAdapter.Fill(this.whizzDataSet2libro.Libro);
            // TODO: esta línea de código carga datos en la tabla 'whizzDataSetPrestamo.Prestamo' Puede moverla o quitarla según sea necesario.
      

        }
        ServiceReference1.ServiceSoapClient servicio = new ServiceReference1.ServiceSoapClient();
        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            dgpedidos.DataSource = servicio.BuscarLibro(txtpedidos.Text);

            dgpedidos.DataMember = "Libro";




        }

        private void textBox1_TextChanged_1(object sender, EventArgs e)
        {

        }

        private void btperdir_Click(object sender, EventArgs e)
        {


            
        }

       

    
    }
}
