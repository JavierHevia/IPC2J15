namespace Practica1
{
    partial class Pedidos
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.dgpedidos = new System.Windows.Forms.DataGridView();
            this.NombreL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Autor1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ExistenciaEnBiblioteca = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.disponibleDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.prestamoDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.reservadosDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.libroBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.whizzDataSet2 = new Practica1.WhizzDataSet2();
            this.whizzDataSetPrestamo = new Practica1.WhizzDataSetPrestamo();
            this.prestamoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.prestamoTableAdapter = new Practica1.WhizzDataSetPrestamoTableAdapters.PrestamoTableAdapter();
            this.label1 = new System.Windows.Forms.Label();
            this.txtpedidos = new System.Windows.Forms.TextBox();
            this.whizzDataSet2libro = new Practica1.WhizzDataSet2libro();
            this.libroBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.libroTableAdapter = new Practica1.WhizzDataSet2libroTableAdapters.LibroTableAdapter();
            this.libroTableAdapter1 = new Practica1.WhizzDataSet2TableAdapters.LibroTableAdapter();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtNoCarnet = new System.Windows.Forms.TextBox();
            this.txtCodLibro = new System.Windows.Forms.TextBox();
            this.btperdir = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgpedidos)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.libroBindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSet2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSetPrestamo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.prestamoBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSet2libro)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.libroBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // dgpedidos
            // 
            this.dgpedidos.AllowUserToDeleteRows = false;
            this.dgpedidos.AutoGenerateColumns = false;
            this.dgpedidos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgpedidos.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.NombreL,
            this.Autor1,
            this.ExistenciaEnBiblioteca,
            this.disponibleDataGridViewTextBoxColumn,
            this.prestamoDataGridViewTextBoxColumn,
            this.reservadosDataGridViewTextBoxColumn});
            this.dgpedidos.DataSource = this.libroBindingSource1;
            this.dgpedidos.Location = new System.Drawing.Point(1, 47);
            this.dgpedidos.Name = "dgpedidos";
            this.dgpedidos.Size = new System.Drawing.Size(643, 150);
            this.dgpedidos.TabIndex = 0;
            // 
            // NombreL
            // 
            this.NombreL.DataPropertyName = "NombreL";
            this.NombreL.HeaderText = "NombreL";
            this.NombreL.Name = "NombreL";
            // 
            // Autor1
            // 
            this.Autor1.DataPropertyName = "Autor1";
            this.Autor1.HeaderText = "Autor1";
            this.Autor1.Name = "Autor1";
            // 
            // ExistenciaEnBiblioteca
            // 
            this.ExistenciaEnBiblioteca.DataPropertyName = "ExistenciaEnBiblioteca";
            this.ExistenciaEnBiblioteca.HeaderText = "ExistenciaEnBiblioteca";
            this.ExistenciaEnBiblioteca.Name = "ExistenciaEnBiblioteca";
            // 
            // disponibleDataGridViewTextBoxColumn
            // 
            this.disponibleDataGridViewTextBoxColumn.DataPropertyName = "Disponible";
            this.disponibleDataGridViewTextBoxColumn.HeaderText = "Disponible";
            this.disponibleDataGridViewTextBoxColumn.Name = "disponibleDataGridViewTextBoxColumn";
            // 
            // prestamoDataGridViewTextBoxColumn
            // 
            this.prestamoDataGridViewTextBoxColumn.DataPropertyName = "Prestamo";
            this.prestamoDataGridViewTextBoxColumn.HeaderText = "Prestamo";
            this.prestamoDataGridViewTextBoxColumn.Name = "prestamoDataGridViewTextBoxColumn";
            // 
            // reservadosDataGridViewTextBoxColumn
            // 
            this.reservadosDataGridViewTextBoxColumn.DataPropertyName = "Reservados";
            this.reservadosDataGridViewTextBoxColumn.HeaderText = "Reservados";
            this.reservadosDataGridViewTextBoxColumn.Name = "reservadosDataGridViewTextBoxColumn";
            // 
            // libroBindingSource1
            // 
            this.libroBindingSource1.DataMember = "Libro";
            this.libroBindingSource1.DataSource = this.whizzDataSet2;
            // 
            // whizzDataSet2
            // 
            this.whizzDataSet2.DataSetName = "WhizzDataSet2";
            this.whizzDataSet2.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // whizzDataSetPrestamo
            // 
            this.whizzDataSetPrestamo.DataSetName = "WhizzDataSetPrestamo";
            this.whizzDataSetPrestamo.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // prestamoBindingSource
            // 
            this.prestamoBindingSource.DataMember = "Prestamo";
            this.prestamoBindingSource.DataSource = this.whizzDataSetPrestamo;
            // 
            // prestamoTableAdapter
            // 
            this.prestamoTableAdapter.ClearBeforeFill = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(10, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(80, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Buscar por libro";
            // 
            // txtpedidos
            // 
            this.txtpedidos.Location = new System.Drawing.Point(106, 12);
            this.txtpedidos.Name = "txtpedidos";
            this.txtpedidos.Size = new System.Drawing.Size(100, 20);
            this.txtpedidos.TabIndex = 2;
            this.txtpedidos.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // whizzDataSet2libro
            // 
            this.whizzDataSet2libro.DataSetName = "WhizzDataSet2libro";
            this.whizzDataSet2libro.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // libroBindingSource
            // 
            this.libroBindingSource.DataMember = "Libro";
            this.libroBindingSource.DataSource = this.whizzDataSet2libro;
            // 
            // libroTableAdapter
            // 
            this.libroTableAdapter.ClearBeforeFill = true;
            // 
            // libroTableAdapter1
            // 
            this.libroTableAdapter1.ClearBeforeFill = true;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(54, 213);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(108, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "No.Carnet Estudiante";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(57, 249);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(55, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Cod_Libro";
            // 
            // txtNoCarnet
            // 
            this.txtNoCarnet.Location = new System.Drawing.Point(191, 213);
            this.txtNoCarnet.Name = "txtNoCarnet";
            this.txtNoCarnet.Size = new System.Drawing.Size(100, 20);
            this.txtNoCarnet.TabIndex = 5;
            this.txtNoCarnet.TextChanged += new System.EventHandler(this.textBox1_TextChanged_1);
            // 
            // txtCodLibro
            // 
            this.txtCodLibro.Location = new System.Drawing.Point(191, 249);
            this.txtCodLibro.Name = "txtCodLibro";
            this.txtCodLibro.Size = new System.Drawing.Size(100, 20);
            this.txtCodLibro.TabIndex = 6;
            // 
            // btperdir
            // 
            this.btperdir.Location = new System.Drawing.Point(350, 245);
            this.btperdir.Name = "btperdir";
            this.btperdir.Size = new System.Drawing.Size(75, 23);
            this.btperdir.TabIndex = 7;
            this.btperdir.Text = "Pedir";
            this.btperdir.UseVisualStyleBackColor = true;
            this.btperdir.Click += new System.EventHandler(this.btperdir_Click);
            // 
            // Pedidos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(651, 342);
            this.Controls.Add(this.btperdir);
            this.Controls.Add(this.txtCodLibro);
            this.Controls.Add(this.txtNoCarnet);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtpedidos);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dgpedidos);
            this.Name = "Pedidos";
            this.Text = "Pedidos";
            this.Load += new System.EventHandler(this.Pedidos_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgpedidos)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.libroBindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSet2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSetPrestamo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.prestamoBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSet2libro)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.libroBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgpedidos;
        private WhizzDataSetPrestamo whizzDataSetPrestamo;
        private System.Windows.Forms.BindingSource prestamoBindingSource;
        private WhizzDataSetPrestamoTableAdapters.PrestamoTableAdapter prestamoTableAdapter;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtpedidos;
        private WhizzDataSet2libro whizzDataSet2libro;
        private System.Windows.Forms.BindingSource libroBindingSource;
        private WhizzDataSet2libroTableAdapters.LibroTableAdapter libroTableAdapter;
        private WhizzDataSet2 whizzDataSet2;
        private System.Windows.Forms.BindingSource libroBindingSource1;
        private WhizzDataSet2TableAdapters.LibroTableAdapter libroTableAdapter1;
        private System.Windows.Forms.DataGridViewTextBoxColumn NombreL;
        private System.Windows.Forms.DataGridViewTextBoxColumn Autor1;
        private System.Windows.Forms.DataGridViewTextBoxColumn ExistenciaEnBiblioteca;
        private System.Windows.Forms.DataGridViewTextBoxColumn disponibleDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn prestamoDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn reservadosDataGridViewTextBoxColumn;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtNoCarnet;
        private System.Windows.Forms.TextBox txtCodLibro;
        private System.Windows.Forms.Button btperdir;
    }
}