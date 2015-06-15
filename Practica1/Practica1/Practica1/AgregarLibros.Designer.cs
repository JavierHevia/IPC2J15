namespace Practica1
{
    partial class AgregarLibros
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtcodigo = new System.Windows.Forms.TextBox();
            this.txtnombrel = new System.Windows.Forms.TextBox();
            this.txtexistencias = new System.Windows.Forms.TextBox();
            this.txtpaginas = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.txttema = new System.Windows.Forms.TextBox();
            this.txtautor1 = new System.Windows.Forms.TextBox();
            this.txtautor2 = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtautor3 = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.dglibro = new System.Windows.Forms.DataGridView();
            this.codLibroDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nombreLDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.existenciasDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.paginasDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.temaDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.autor1DataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.autor2DataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.autor3DataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.libroBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.whizzDataSet = new Practica1.WhizzDataSet();
            this.libroTableAdapter = new Practica1.WhizzDataSetTableAdapters.LibroTableAdapter();
            this.btGuardar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dglibro)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.libroBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(13, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(58, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Codigo";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(13, 44);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(63, 16);
            this.label2.TabIndex = 1;
            this.label2.Text = "Nombre";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(13, 76);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(87, 16);
            this.label3.TabIndex = 2;
            this.label3.Text = "Existencias";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(13, 104);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(65, 16);
            this.label4.TabIndex = 3;
            this.label4.Text = "Páginas";
            // 
            // txtcodigo
            // 
            this.txtcodigo.Location = new System.Drawing.Point(102, 5);
            this.txtcodigo.Name = "txtcodigo";
            this.txtcodigo.Size = new System.Drawing.Size(124, 20);
            this.txtcodigo.TabIndex = 4;
            // 
            // txtnombrel
            // 
            this.txtnombrel.Location = new System.Drawing.Point(102, 42);
            this.txtnombrel.Name = "txtnombrel";
            this.txtnombrel.Size = new System.Drawing.Size(124, 20);
            this.txtnombrel.TabIndex = 5;
            // 
            // txtexistencias
            // 
            this.txtexistencias.Location = new System.Drawing.Point(102, 75);
            this.txtexistencias.Name = "txtexistencias";
            this.txtexistencias.Size = new System.Drawing.Size(124, 20);
            this.txtexistencias.TabIndex = 6;
            // 
            // txtpaginas
            // 
            this.txtpaginas.Location = new System.Drawing.Point(102, 104);
            this.txtpaginas.Name = "txtpaginas";
            this.txtpaginas.Size = new System.Drawing.Size(124, 20);
            this.txtpaginas.TabIndex = 7;
            this.txtpaginas.TextChanged += new System.EventHandler(this.textBox4_TextChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(13, 139);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(48, 16);
            this.label5.TabIndex = 8;
            this.label5.Text = "Tema";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(13, 169);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(52, 16);
            this.label6.TabIndex = 9;
            this.label6.Text = "Autor1";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(13, 201);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(52, 16);
            this.label7.TabIndex = 10;
            this.label7.Text = "Autor2";
            // 
            // txttema
            // 
            this.txttema.Location = new System.Drawing.Point(102, 131);
            this.txttema.Name = "txttema";
            this.txttema.Size = new System.Drawing.Size(124, 20);
            this.txttema.TabIndex = 11;
            // 
            // txtautor1
            // 
            this.txtautor1.Location = new System.Drawing.Point(102, 169);
            this.txtautor1.Name = "txtautor1";
            this.txtautor1.Size = new System.Drawing.Size(124, 20);
            this.txtautor1.TabIndex = 12;
            // 
            // txtautor2
            // 
            this.txtautor2.Location = new System.Drawing.Point(102, 197);
            this.txtautor2.Name = "txtautor2";
            this.txtautor2.Size = new System.Drawing.Size(124, 20);
            this.txtautor2.TabIndex = 13;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(13, 229);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(52, 16);
            this.label8.TabIndex = 14;
            this.label8.Text = "Autor3";
            // 
            // txtautor3
            // 
            this.txtautor3.Location = new System.Drawing.Point(102, 228);
            this.txtautor3.Name = "txtautor3";
            this.txtautor3.Size = new System.Drawing.Size(124, 20);
            this.txtautor3.TabIndex = 15;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(232, 198);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(67, 16);
            this.label9.TabIndex = 16;
            this.label9.Text = "*Opcional";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(232, 232);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(67, 16);
            this.label10.TabIndex = 17;
            this.label10.Text = "*Opcional";
            // 
            // dglibro
            // 
            this.dglibro.AutoGenerateColumns = false;
            this.dglibro.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dglibro.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.codLibroDataGridViewTextBoxColumn,
            this.nombreLDataGridViewTextBoxColumn,
            this.existenciasDataGridViewTextBoxColumn,
            this.paginasDataGridViewTextBoxColumn,
            this.temaDataGridViewTextBoxColumn,
            this.autor1DataGridViewTextBoxColumn,
            this.autor2DataGridViewTextBoxColumn,
            this.autor3DataGridViewTextBoxColumn});
            this.dglibro.DataSource = this.libroBindingSource;
            this.dglibro.Location = new System.Drawing.Point(-45, 257);
            this.dglibro.Name = "dglibro";
            this.dglibro.Size = new System.Drawing.Size(644, 150);
            this.dglibro.TabIndex = 19;
            // 
            // codLibroDataGridViewTextBoxColumn
            // 
            this.codLibroDataGridViewTextBoxColumn.DataPropertyName = "Cod_Libro";
            this.codLibroDataGridViewTextBoxColumn.HeaderText = "Cod_Libro";
            this.codLibroDataGridViewTextBoxColumn.Name = "codLibroDataGridViewTextBoxColumn";
            // 
            // nombreLDataGridViewTextBoxColumn
            // 
            this.nombreLDataGridViewTextBoxColumn.DataPropertyName = "NombreL";
            this.nombreLDataGridViewTextBoxColumn.HeaderText = "NombreL";
            this.nombreLDataGridViewTextBoxColumn.Name = "nombreLDataGridViewTextBoxColumn";
            // 
            // existenciasDataGridViewTextBoxColumn
            // 
            this.existenciasDataGridViewTextBoxColumn.DataPropertyName = "Existencias";
            this.existenciasDataGridViewTextBoxColumn.HeaderText = "Existencias";
            this.existenciasDataGridViewTextBoxColumn.Name = "existenciasDataGridViewTextBoxColumn";
            // 
            // paginasDataGridViewTextBoxColumn
            // 
            this.paginasDataGridViewTextBoxColumn.DataPropertyName = "Paginas";
            this.paginasDataGridViewTextBoxColumn.HeaderText = "Paginas";
            this.paginasDataGridViewTextBoxColumn.Name = "paginasDataGridViewTextBoxColumn";
            // 
            // temaDataGridViewTextBoxColumn
            // 
            this.temaDataGridViewTextBoxColumn.DataPropertyName = "Tema";
            this.temaDataGridViewTextBoxColumn.HeaderText = "Tema";
            this.temaDataGridViewTextBoxColumn.Name = "temaDataGridViewTextBoxColumn";
            // 
            // autor1DataGridViewTextBoxColumn
            // 
            this.autor1DataGridViewTextBoxColumn.DataPropertyName = "Autor1";
            this.autor1DataGridViewTextBoxColumn.HeaderText = "Autor1";
            this.autor1DataGridViewTextBoxColumn.Name = "autor1DataGridViewTextBoxColumn";
            // 
            // autor2DataGridViewTextBoxColumn
            // 
            this.autor2DataGridViewTextBoxColumn.DataPropertyName = "Autor2";
            this.autor2DataGridViewTextBoxColumn.HeaderText = "Autor2";
            this.autor2DataGridViewTextBoxColumn.Name = "autor2DataGridViewTextBoxColumn";
            // 
            // autor3DataGridViewTextBoxColumn
            // 
            this.autor3DataGridViewTextBoxColumn.DataPropertyName = "Autor3";
            this.autor3DataGridViewTextBoxColumn.HeaderText = "Autor3";
            this.autor3DataGridViewTextBoxColumn.Name = "autor3DataGridViewTextBoxColumn";
            // 
            // libroBindingSource
            // 
            this.libroBindingSource.DataMember = "Libro";
            this.libroBindingSource.DataSource = this.whizzDataSet;
            // 
            // whizzDataSet
            // 
            this.whizzDataSet.DataSetName = "WhizzDataSet";
            this.whizzDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // libroTableAdapter
            // 
            this.libroTableAdapter.ClearBeforeFill = true;
            // 
            // btGuardar
            // 
            this.btGuardar.Location = new System.Drawing.Point(318, 228);
            this.btGuardar.Name = "btGuardar";
            this.btGuardar.Size = new System.Drawing.Size(75, 23);
            this.btGuardar.TabIndex = 20;
            this.btGuardar.Text = "Guardar";
            this.btGuardar.UseVisualStyleBackColor = true;
            this.btGuardar.Click += new System.EventHandler(this.btGuardar_Click);
            // 
            // AgregarLibros
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(588, 381);
            this.Controls.Add(this.btGuardar);
            this.Controls.Add(this.dglibro);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.txtautor3);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.txtautor2);
            this.Controls.Add(this.txtautor1);
            this.Controls.Add(this.txttema);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtpaginas);
            this.Controls.Add(this.txtexistencias);
            this.Controls.Add(this.txtnombrel);
            this.Controls.Add(this.txtcodigo);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "AgregarLibros";
            this.Text = "AgregarLibros";
            this.Load += new System.EventHandler(this.AgregarLibros_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dglibro)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.libroBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.whizzDataSet)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtcodigo;
        private System.Windows.Forms.TextBox txtnombrel;
        private System.Windows.Forms.TextBox txtexistencias;
        private System.Windows.Forms.TextBox txtpaginas;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txttema;
        private System.Windows.Forms.TextBox txtautor1;
        private System.Windows.Forms.TextBox txtautor2;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtautor3;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.DataGridView dglibro;
        private WhizzDataSet whizzDataSet;
        private System.Windows.Forms.BindingSource libroBindingSource;
        private WhizzDataSetTableAdapters.LibroTableAdapter libroTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn codLibroDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nombreLDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn existenciasDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn paginasDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn temaDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn autor1DataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn autor2DataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn autor3DataGridViewTextBoxColumn;
        private System.Windows.Forms.Button btGuardar;
    }
}