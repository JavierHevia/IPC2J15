using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Practica1
{
    public partial class PantallaPrincipal : Form
    {
        public PantallaPrincipal()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'whizzDataSetlibropre.Libro' Puede moverla o quitarla según sea necesario.
            this.libroTableAdapter1.Fill(this.whizzDataSetlibropre.Libro);
            // TODO: esta línea de código carga datos en la tabla 'whizzDataSet1.Libro' Puede moverla o quitarla según sea necesario.
            this.libroTableAdapter.Fill(this.whizzDataSet1.Libro);
            // TODO: esta línea de código carga datos en la tabla 'whizzDataSet2.Libro' Puede moverla o quitarla según sea necesario.
         
            // TODO: esta línea de código carga datos en la tabla 'whizzDataSet.Cliente' Puede moverla o quitarla según sea necesario.
                   }

        private void button1_Click(object sender, EventArgs e)
        {
            AgregarCliente ac = new AgregarCliente();
            ac.Visible = true;
         
        }

        private void DGcliente_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            AgregarLibros al = new AgregarLibros();
            al.Visible = true;



        }
        ServiceReference1.ServiceSoapClient servicio = new ServiceReference1.ServiceSoapClient();

       
        private void txtbuscarnom_TextChanged(object sender, EventArgs e)
        {
            dglibro.DataSource = servicio.BuscarLibro(txtbuscarnom.Text);

            dglibro.DataMember = "Libro";
        }

     

        private void txtlibroautor_TextChanged(object sender, EventArgs e)
        {
            dglibro.DataSource = servicio.BuscarLibroautor(txtlibroautor.Text);

            dglibro.DataMember = "Libro";
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Pedidos p = new Pedidos();
            p.Visible = true;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            MasPrestados mp = new MasPrestados();
            mp.Visible = true;
        }

       
       
    }
}
