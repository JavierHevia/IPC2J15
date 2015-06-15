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
    public partial class AgregarLibros : Form
    {
        public AgregarLibros()
        {
            InitializeComponent();
        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void AgregarLibros_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'whizzDataSet.Libro' Puede moverla o quitarla según sea necesario.
            this.libroTableAdapter.Fill(this.whizzDataSet.Libro);

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }
        ServiceReference1.ServiceSoapClient servicio = new ServiceReference1.ServiceSoapClient();
        private void btGuardar_Click(object sender, EventArgs e)
        {
            int codlibro, existencias, paginas;
           

            codlibro = Convert.ToInt32(txtcodigo.Text);
            existencias = Convert.ToInt32(txtexistencias.Text);
            paginas = Convert.ToInt32(txtpaginas.Text);



            String Tabla = "Libro";
            String Campos = "Cod_Libro,NombreL, Existencias, Paginas,Tema,Autor1,Autor2,Autor3";
            String Valores = "'" + codlibro + "','" + txtnombrel.Text + "','" + existencias + "','" + paginas + "','" + txttema.Text + "','" + txtautor1.Text + "','" + txtautor2.Text + "','" + txtautor3.Text+"'";

            dglibro.Update();
            
            if (servicio.Registrar(Tabla, Campos, Valores))
            {

                MessageBox.Show("Libro creado");
                
            }
            else
            {
                //Response.Write(cq.MostrarError);

            }
    
        }


       }
    
}
