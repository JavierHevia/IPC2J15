using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Proyecto2
{
    public class ConeccionBS
    {
        SqlConnection conexion = new SqlConnection();
        string mostrarError;
        public string MostrarError
        {

            get { return mostrarError; }
            set { mostrarError = value; }
        }
        public bool conectarServidor()
        {
            bool respuesta = false;
            string cadenaConexion = @"Data Source=SERGIO-PC\SQL2012;Initial Catalog=Proyecto2;Integrated Security=True";
            try
            {
                conexion.Close();
                conexion.ConnectionString = cadenaConexion;
                conexion.Open();
                respuesta = true;
            }

            catch (Exception e)
            {
                respuesta = false;
                MostrarError = "No se ha podido conectar " + e.Message.ToString();
            }


            return respuesta;
        }

        public bool Registrar(string tabla, string campos, string valor)
        {
            bool respuesta = false;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "INSERT INTO " + tabla + "(" + campos + ") VALUES (" + valor + ");";
                conectarServidor();

                if (conectarServidor())
                {
                    if (cm.ExecuteNonQuery() == 1)
                        respuesta = true;
                    else
                        respuesta = false;

                }
                else
                {
                    respuesta = false;
                }

            }
            catch (Exception e)
            {
                respuesta = false;
                MostrarError = "Erro: " + e.Message.ToString();
            }
            finally
            {
                conexion.Close();
            }

            return respuesta;
        }


    }
}