using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebApplication1
{
    /// <summary>
    /// Descripción breve de WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hola a todos";
        }


        SqlConnection conexion = new SqlConnection();
        string mostrarError;

        public string MostrarEstado;

        public string MostrarError
        {
            get { return mostrarError; }
            set { mostrarError = value; }


        }


        [WebMethod]
        public bool conectarServidor()
        {
            bool respuesta = false;
            string cadenaConexion = @"Data Source=SERGIO-PC\SQL2012;Initial Catalog=PFase2;Integrated Security=True";
            try
            {
                conexion.Close();
                conexion.ConnectionString = cadenaConexion;
                conexion.Open();
                respuesta = true;
                MostrarEstado = "Conexion exitosa";
            }

            catch (Exception e)
            {
                respuesta = false;
                MostrarError = "No se ha podido conectar " + e.Message.ToString();
            }


            return respuesta;
        }


        [WebMethod]
        public bool Registrar(string Tabla, string Campos, string Valores)
        {
            bool respuesta = false;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "INSERT INTO " + Tabla + "(" + Campos + ") VALUES (" + Valores + ");";
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
                //MostrarError = "Erro: " + e.Message.ToString();
            }
            finally
            {
                conexion.Close();
            }

            return respuesta;
        }





        [WebMethod]
        public int VerificarUsuario(string Usuario, string Contraseña)
        {

            int cant = 0;
            Boolean respuesta;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "SELECT COUNT(*) FROM Cliente where UsuarioC='" + Usuario + "' and Contraseña='" + Contraseña + "' and NoCasilla='" + 1 + "'";
                conectarServidor();
                cant = Convert.ToInt32(cm.ExecuteScalar());
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
            return cant;
        }







        [WebMethod]
        public int VerificarEmpleadoOAdministrador(int codempleado, string Contraseña,string rol)
        {
            
            int cant = 0;
            Boolean respuesta;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "SELECT COUNT(*) FROM Empleado Where Cod_Empleado='" + codempleado + "' and Contraseña='" + Contraseña + "'and Puesto='"+ rol + "'";
                conectarServidor();
                cant = Convert.ToInt32(cm.ExecuteScalar());
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
            return cant;
        }


    }







}
