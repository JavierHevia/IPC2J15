
using System;
using System.Collections.Generic;
using System.Data;
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
            string estado = "Contratado";
            int cant = 0;
            Boolean respuesta;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "SELECT COUNT(*) FROM Empleado Where Cod_Empleado='" + codempleado + "' and Contraseña='" + Contraseña + "'and Puesto='"+ rol + "'and Estado='"+ estado+ "'";
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




        //Actualizacion para cliente y el prestamo
        [WebMethod]
        public bool Pagosiono(int CasillaInter, string pago)
        {
            bool respuesta = false;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "Update Cliente Set Pago='" + pago + "' Where CasillaInter='" + CasillaInter+"'";
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
        public DataSet buscarcliente(string IDMask)
        {
            IDMask = IDMask.Replace("'", "''");


            SqlConnection con = new SqlConnection("Data Source=SERGIO-PC\\SQL2012;Initial Catalog=PFase2;Integrated Security=True");

            SqlDataAdapter daCust = new SqlDataAdapter("Select * From Cliente WHERE NombreC Like '%" + IDMask + "%'", con);

            DataSet ds = new DataSet();

            con.Open();

            daCust.Fill(ds, "Libro");

            con.Close();


            return ds;
        }


        [WebMethod]
        public bool CargarCSVImpuesto(string path)
        {
            bool respuesta = false;
            try
            {
                SqlCommand verificar = new SqlCommand();
                verificar.Connection = conexion;
                verificar.CommandText = "BULK INSERT dbo.Impuesto FROM '" + path + "' WITH (FIELDTERMINATOR = ',', ROWTERMINATOR = '\n' )";

                conectarServidor();

                if (conectarServidor())
                {
                    if (verificar.ExecuteNonQuery() == 1)
                    {
                        respuesta = true;
                    }

                    else
                    {
                        respuesta = false;
                    }


                }
                else
                {
                    respuesta = false;
                }
            }
            catch (Exception ex)
            {
                respuesta = false;
                mostrarError = "Error" + ex.Message.ToString();
            }
            finally
            {
                conexion.Close();
            }
            return respuesta;
        }


        [WebMethod]
        public bool CargarCSVEmpleado(string path)
        {
            bool respuesta = false;
            try
            {
                SqlCommand verificar = new SqlCommand();
                verificar.Connection = conexion;
                verificar.CommandText = "BULK INSERT dbo.Empleado FROM '" + path + "' WITH (FIELDTERMINATOR = ',', ROWTERMINATOR = '\n' )";

                conectarServidor();

                if (conectarServidor())
                {
                    if (verificar.ExecuteNonQuery() == 1)
                    {
                        respuesta = true;
                    }

                    else
                    {
                        respuesta = false;
                    }


                }
                else
                {
                    respuesta = false;
                }
            }
            catch (Exception ex)
            {
                respuesta = false;
                mostrarError = "Error" + ex.Message.ToString();
            }
            finally
            {
                conexion.Close();
            }
            return respuesta;
        }



        [WebMethod]
        public bool CargarCSVPaquetes(string path)
        {
            bool respuesta = false;
            try
            {
                SqlCommand verificar = new SqlCommand();
                verificar.Connection = conexion;
                verificar.CommandText = "BULK INSERT dbo.Paquete FROM '" + path + "' WITH (FIELDTERMINATOR = ',', ROWTERMINATOR = '\n' )";

                conectarServidor();

                if (conectarServidor())
                {
                    if (verificar.ExecuteNonQuery() == 1)
                    {
                        respuesta = true;
                    }

                    else
                    {
                        respuesta = false;
                    }


                }
                else
                {
                    respuesta = false;
                }
            }
            catch (Exception ex)
            {
                respuesta = false;
                mostrarError = "Error" + ex.Message.ToString();
            }
            finally
            {
                conexion.Close();
            }
            return respuesta;
        }




        [WebMethod]
        public bool DespedirEmpleado(int CodEmpleado, string Estado)
        {
            bool respuesta = false;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "Update Empleado Set Estado='" + Estado + "' Where Cod_Empleado='" + CodEmpleado + "'";
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
        public bool FacturaImagen(string UsuarioC, string link)
        {
            bool respuesta = false;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "Update Cliente Set Factura='" + link + "' Where UsuarioC='" + UsuarioC + "'";
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
        public int VerificarEstadoPaquete(int codpaquete, int Estado)
        {

            int cant = 0;
            Boolean respuesta;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "SELECT COUNT(*) FROM Paquete Where Cod_Paquete='" + codpaquete + "' and EstadoDeRegistro='" + Estado + "'";
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
        public bool AutorizarCliente(string UsuarioC, int link)
        {
            bool respuesta = false;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "Update Cliente Set NoCasilla='" + link + "' Where UsuarioC='" + UsuarioC + "'";
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
        public bool EstadoPaquete(string NombrePaquete, string Estado)
        {
            bool respuesta = false;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "Update Paquete Set EstadoP='" + Estado + "' Where Nombre='" + NombrePaquete + "'";
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
        public int VerificarEstadopaqueteCliente(string NombrePaquete)
        {
            int estadocliente = 1;
            int cant = 0;
            Boolean respuesta;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "SELECT COUNT(*) FROM Paquete where EstadoDeRegistro='" + estadocliente + "' and Nombre='" + NombrePaquete  + "'";
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
        public int cambiodeestadopaquete(string NombrePaquete)
        {
            int estadocliente = 2;
            int cant = 0;
            Boolean respuesta;
            try
            {
                SqlCommand cm = new SqlCommand();
                cm.Connection = conexion;
                cm.CommandText = "SELECT COUNT(*) FROM Paquete where EstadoDeRegistro='" + estadocliente + "' and Nombre='" + NombrePaquete + "'";
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
