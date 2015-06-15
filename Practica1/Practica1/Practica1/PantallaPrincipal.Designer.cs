namespace Practica1
{
    partial class PantallaPrincipal
    {
        /// <summary>
        /// Variable del diseñador requerida.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén utilizando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido del método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.libroBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.whizzDataSet1 = new Practica1.WhizzDataSet1();
            this.libroTableAdapter = new Practica1.WhizzDataSet1TableAdapters.LibroTableAdapter();
            this.txtbuscarnom = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtlibroautor = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.button5 = new System.Windows.Forms.Button();
            this.clienteBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.libroBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dglibro = new System.Windows.Forms.DataGridView();
            this.whizzDataSetlibropre = new Practica1.WhizzDataSetlibropre();
            this.libroBindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            this.libroTableAdapter1 = new Practica1.WhizzDataSetlibropreTableAdapters.LibroTableAdapter();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.libroBindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSet1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.clienteBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.libroBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dglibro)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSetlibropre)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.libroBindingSource2)).BeginInit();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(12, 12);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(93, 44);
            this.button1.TabIndex = 0;
            this.button1.Text = "Ingreso de Nuevos Clientes";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(459, 12);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(93, 44);
            this.button2.TabIndex = 1;
            this.button2.Text = "Consulta de Libros";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(111, 12);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(93, 44);
            this.button3.TabIndex = 2;
            this.button3.Text = "Registro de Nuevos Libros";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(558, 12);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(93, 44);
            this.button4.TabIndex = 3;
            this.button4.Text = "Mas Prestados";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // libroBindingSource1
            // 
            this.libroBindingSource1.DataMember = "Libro";
            this.libroBindingSource1.DataSource = this.whizzDataSet1;
            // 
            // whizzDataSet1
            // 
            this.whizzDataSet1.DataSetName = "WhizzDataSet1";
            this.whizzDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // libroTableAdapter
            // 
            this.libroTableAdapter.ClearBeforeFill = true;
            // 
            // txtbuscarnom
            // 
            this.txtbuscarnom.Location = new System.Drawing.Point(129, 254);
            this.txtbuscarnom.Name = "txtbuscarnom";
            this.txtbuscarnom.Size = new System.Drawing.Size(139, 20);
            this.txtbuscarnom.TabIndex = 5;
            this.txtbuscarnom.TextChanged += new System.EventHandler(this.txtbuscarnom_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 257);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(96, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Buscar por nombre";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 286);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(86, 13);
            this.label2.TabIndex = 8;
            this.label2.Text = "Buscar por Autor";
            // 
            // txtlibroautor
            // 
            this.txtlibroautor.Location = new System.Drawing.Point(129, 286);
            this.txtlibroautor.Name = "txtlibroautor";
            this.txtlibroautor.Size = new System.Drawing.Size(139, 20);
            this.txtlibroautor.TabIndex = 9;
            this.txtlibroautor.TextChanged += new System.EventHandler(this.txtlibroautor_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(12, 70);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 18);
            this.label3.TabIndex = 10;
            this.label3.Text = " Libros";
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(360, 12);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(93, 44);
            this.button5.TabIndex = 11;
            this.button5.Text = "Pedidos";
            this.button5.UseVisualStyleBackColor = true;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // clienteBindingSource
            // 
            this.clienteBindingSource.DataMember = "Cliente";
            // 
            // libroBindingSource
            // 
            this.libroBindingSource.DataMember = "Libro";
            // 
            // dglibro
            // 
            this.dglibro.AutoGenerateColumns = false;
            this.dglibro.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dglibro.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn4,
            this.dataGridViewTextBoxColumn5,
            this.dataGridViewTextBoxColumn6,
            this.dataGridViewTextBoxColumn7});
            this.dglibro.DataSource = this.libroBindingSource2;
            this.dglibro.Location = new System.Drawing.Point(12, 91);
            this.dglibro.Name = "dglibro";
            this.dglibro.Size = new System.Drawing.Size(642, 150);
            this.dglibro.TabIndex = 12;
            // 
            // whizzDataSetlibropre
            // 
            this.whizzDataSetlibropre.DataSetName = "WhizzDataSetlibropre";
            this.whizzDataSetlibropre.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // libroBindingSource2
            // 
            this.libroBindingSource2.DataMember = "Libro";
            this.libroBindingSource2.DataSource = this.whizzDataSetlibropre;
            // 
            // libroTableAdapter1
            // 
            this.libroTableAdapter1.ClearBeforeFill = true;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "Cod_Libro";
            this.dataGridViewTextBoxColumn1.HeaderText = "Cod_Libro";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.DataPropertyName = "NombreL";
            this.dataGridViewTextBoxColumn2.HeaderText = "NombreL";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.DataPropertyName = "Paginas";
            this.dataGridViewTextBoxColumn4.HeaderText = "Paginas";
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            // 
            // dataGridViewTextBoxColumn5
            // 
            this.dataGridViewTextBoxColumn5.DataPropertyName = "Tema";
            this.dataGridViewTextBoxColumn5.HeaderText = "Tema";
            this.dataGridViewTextBoxColumn5.Name = "dataGridViewTextBoxColumn5";
            // 
            // dataGridViewTextBoxColumn6
            // 
            this.dataGridViewTextBoxColumn6.DataPropertyName = "Autor1";
            this.dataGridViewTextBoxColumn6.HeaderText = "Autor1";
            this.dataGridViewTextBoxColumn6.Name = "dataGridViewTextBoxColumn6";
            // 
            // dataGridViewTextBoxColumn7
            // 
            this.dataGridViewTextBoxColumn7.DataPropertyName = "Autor2";
            this.dataGridViewTextBoxColumn7.HeaderText = "Autor2";
            this.dataGridViewTextBoxColumn7.Name = "dataGridViewTextBoxColumn7";
            // 
            // PantallaPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(663, 319);
            this.Controls.Add(this.dglibro);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtlibroautor);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtbuscarnom);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Name = "PantallaPrincipal";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.libroBindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSet1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.clienteBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.libroBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dglibro)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSetlibropre)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.libroBindingSource2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.BindingSource bindingSource1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;

        private System.Windows.Forms.BindingSource clienteBindingSource;
    
        private System.Windows.Forms.BindingSource libroBindingSource;
        
        private WhizzDataSet1 whizzDataSet1;
        private System.Windows.Forms.BindingSource libroBindingSource1;
        private WhizzDataSet1TableAdapters.LibroTableAdapter libroTableAdapter;
        private System.Windows.Forms.TextBox txtbuscarnom;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtlibroautor;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.DataGridView dglibro;
        private WhizzDataSetlibropre whizzDataSetlibropre;
        private System.Windows.Forms.BindingSource libroBindingSource2;
        private WhizzDataSetlibropreTableAdapters.LibroTableAdapter libroTableAdapter1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn6;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn7;
    }
}

