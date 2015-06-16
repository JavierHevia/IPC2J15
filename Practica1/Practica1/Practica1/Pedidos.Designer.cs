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
            this.label4 = new System.Windows.Forms.Label();
            this.txtfechai = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtfechafin = new System.Windows.Forms.TextBox();
            this.monthCalendar1 = new System.Windows.Forms.MonthCalendar();
            this.whizzDataSet3 = new Practica1.WhizzDataSet3();
            this.prestamoBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.prestamoTableAdapter1 = new Practica1.WhizzDataSet3TableAdapters.PrestamoTableAdapter();
            this.label6 = new System.Windows.Forms.Label();
            this.codPrestamoDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tipoDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fechaInicioDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fechaFinDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.codLibroDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.noCarnetDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgpedidos)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.libroBindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSet2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSetPrestamo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.prestamoBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSet2libro)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.libroBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSet3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.prestamoBindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // dgpedidos
            // 
            this.dgpedidos.AutoGenerateColumns = false;
            this.dgpedidos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgpedidos.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.codPrestamoDataGridViewTextBoxColumn,
            this.tipoDataGridViewTextBoxColumn,
            this.fechaInicioDataGridViewTextBoxColumn,
            this.fechaFinDataGridViewTextBoxColumn,
            this.codLibroDataGridViewTextBoxColumn,
            this.noCarnetDataGridViewTextBoxColumn});
            this.dgpedidos.DataSource = this.prestamoBindingSource1;
            this.dgpedidos.Location = new System.Drawing.Point(-29, 43);
            this.dgpedidos.Name = "dgpedidos";
            this.dgpedidos.Size = new System.Drawing.Size(663, 150);
            this.dgpedidos.TabIndex = 0;
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
            this.label2.Location = new System.Drawing.Point(12, 210);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(108, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "No.Carnet Estudiante";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(15, 246);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(55, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Cod_Libro";
            // 
            // txtNoCarnet
            // 
            this.txtNoCarnet.Location = new System.Drawing.Point(149, 210);
            this.txtNoCarnet.Name = "txtNoCarnet";
            this.txtNoCarnet.Size = new System.Drawing.Size(100, 20);
            this.txtNoCarnet.TabIndex = 5;
            this.txtNoCarnet.TextChanged += new System.EventHandler(this.textBox1_TextChanged_1);
            // 
            // txtCodLibro
            // 
            this.txtCodLibro.Location = new System.Drawing.Point(149, 246);
            this.txtCodLibro.Name = "txtCodLibro";
            this.txtCodLibro.Size = new System.Drawing.Size(100, 20);
            this.txtCodLibro.TabIndex = 6;
            // 
            // btperdir
            // 
            this.btperdir.Location = new System.Drawing.Point(149, 350);
            this.btperdir.Name = "btperdir";
            this.btperdir.Size = new System.Drawing.Size(75, 23);
            this.btperdir.TabIndex = 7;
            this.btperdir.Text = "Pedir";
            this.btperdir.UseVisualStyleBackColor = true;
            this.btperdir.Click += new System.EventHandler(this.btperdir_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 280);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(65, 13);
            this.label4.TabIndex = 8;
            this.label4.Text = "Fecha Inicio";
            // 
            // txtfechai
            // 
            this.txtfechai.Location = new System.Drawing.Point(149, 280);
            this.txtfechai.Name = "txtfechai";
            this.txtfechai.Size = new System.Drawing.Size(100, 20);
            this.txtfechai.TabIndex = 9;
            this.txtfechai.TextChanged += new System.EventHandler(this.txtfechai_TextChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(10, 318);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(51, 13);
            this.label5.TabIndex = 10;
            this.label5.Text = "FechaFin";
            // 
            // txtfechafin
            // 
            this.txtfechafin.Location = new System.Drawing.Point(149, 318);
            this.txtfechafin.Name = "txtfechafin";
            this.txtfechafin.Size = new System.Drawing.Size(100, 20);
            this.txtfechafin.TabIndex = 11;
            // 
            // monthCalendar1
            // 
            this.monthCalendar1.Location = new System.Drawing.Point(390, 205);
            this.monthCalendar1.Name = "monthCalendar1";
            this.monthCalendar1.TabIndex = 12;
            this.monthCalendar1.DateChanged += new System.Windows.Forms.DateRangeEventHandler(this.monthCalendar1_DateChanged);
            // 
            // whizzDataSet3
            // 
            this.whizzDataSet3.DataSetName = "WhizzDataSet3";
            this.whizzDataSet3.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // prestamoBindingSource1
            // 
            this.prestamoBindingSource1.DataMember = "Prestamo";
            this.prestamoBindingSource1.DataSource = this.whizzDataSet3;
            // 
            // prestamoTableAdapter1
            // 
            this.prestamoTableAdapter1.ClearBeforeFill = true;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(276, 321);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(102, 13);
            this.label6.TabIndex = 13;
            this.label6.Text = "Selecionar Fecha ->";
            // 
            // codPrestamoDataGridViewTextBoxColumn
            // 
            this.codPrestamoDataGridViewTextBoxColumn.DataPropertyName = "Cod_Prestamo";
            this.codPrestamoDataGridViewTextBoxColumn.HeaderText = "Cod_Prestamo";
            this.codPrestamoDataGridViewTextBoxColumn.Name = "codPrestamoDataGridViewTextBoxColumn";
            // 
            // tipoDataGridViewTextBoxColumn
            // 
            this.tipoDataGridViewTextBoxColumn.DataPropertyName = "Tipo";
            this.tipoDataGridViewTextBoxColumn.HeaderText = "Tipo";
            this.tipoDataGridViewTextBoxColumn.Name = "tipoDataGridViewTextBoxColumn";
            // 
            // fechaInicioDataGridViewTextBoxColumn
            // 
            this.fechaInicioDataGridViewTextBoxColumn.DataPropertyName = "FechaInicio";
            this.fechaInicioDataGridViewTextBoxColumn.HeaderText = "FechaInicio";
            this.fechaInicioDataGridViewTextBoxColumn.Name = "fechaInicioDataGridViewTextBoxColumn";
            // 
            // fechaFinDataGridViewTextBoxColumn
            // 
            this.fechaFinDataGridViewTextBoxColumn.DataPropertyName = "FechaFin";
            this.fechaFinDataGridViewTextBoxColumn.HeaderText = "FechaFin";
            this.fechaFinDataGridViewTextBoxColumn.Name = "fechaFinDataGridViewTextBoxColumn";
            // 
            // codLibroDataGridViewTextBoxColumn
            // 
            this.codLibroDataGridViewTextBoxColumn.DataPropertyName = "Cod_Libro";
            this.codLibroDataGridViewTextBoxColumn.HeaderText = "Cod_Libro";
            this.codLibroDataGridViewTextBoxColumn.Name = "codLibroDataGridViewTextBoxColumn";
            // 
            // noCarnetDataGridViewTextBoxColumn
            // 
            this.noCarnetDataGridViewTextBoxColumn.DataPropertyName = "No_Carnet";
            this.noCarnetDataGridViewTextBoxColumn.HeaderText = "No_Carnet";
            this.noCarnetDataGridViewTextBoxColumn.Name = "noCarnetDataGridViewTextBoxColumn";
            // 
            // Pedidos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(625, 385);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.monthCalendar1);
            this.Controls.Add(this.txtfechafin);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtfechai);
            this.Controls.Add(this.label4);
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
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSet3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.prestamoBindingSource1)).EndInit();
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
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtNoCarnet;
        private System.Windows.Forms.TextBox txtCodLibro;
        private System.Windows.Forms.Button btperdir;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtfechai;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtfechafin;
        private System.Windows.Forms.MonthCalendar monthCalendar1;
        private WhizzDataSet3 whizzDataSet3;
        private System.Windows.Forms.BindingSource prestamoBindingSource1;
        private WhizzDataSet3TableAdapters.PrestamoTableAdapter prestamoTableAdapter1;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridViewTextBoxColumn codPrestamoDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn tipoDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn fechaInicioDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn fechaFinDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn codLibroDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn noCarnetDataGridViewTextBoxColumn;
    }
}