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
    public partial class MasPrestados : Form
    {
        public MasPrestados()
        {
            InitializeComponent();
        }

       
        ServiceReference1.ServiceSoapClient servicio = new ServiceReference1.ServiceSoapClient();
        private void MasPrestados_Load(object sender, EventArgs e)
        {

            dataGridView1.DataSource = servicio.ordenar();

            dataGridView1.DataMember = "Libro";
         
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

       
    }
}
