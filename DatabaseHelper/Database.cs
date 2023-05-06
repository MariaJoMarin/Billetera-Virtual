using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using m = Billetera_Virtual.Model;
using c = Billetera_Virtual.Controller;

namespace Billetera_Virtual.DatabaseHelper
{
    public class Database
    {
        const string database = "Billetera";
        const string server = "localhost";
        SqlConnection connection = new SqlConnection($"Data Source={server};Initial Catalog={database};Integrated Security=True");

        public void GuardarTarjeta(List<m.TarjetasM> tarjeta)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                new SqlParameter("@Foto",tarjeta[0].Foto),
                new SqlParameter("@Banco", tarjeta[0].Banco),
                new SqlParameter("@Emisor", tarjeta[0].Emisor),
                new SqlParameter("@Propietario", tarjeta[0].Propietario),
                new SqlParameter("@Ntarjeta", tarjeta[0].NTarjeta),
                new SqlParameter("@Codigo", tarjeta[0].Codigo),
                new SqlParameter("@FechaMes", tarjeta[0].FechaMes),
                new SqlParameter("@FechaYear", tarjeta[0].FechaYear),
            };

            this.ExecuteQuery("[dbo].[spGuardarTarjeta]", param);
        }
        public DataTable TraerTarjetas()
        {
            

            return this.Fill("[dbo].[spTraerTarjetas]", null);
        }

        public DataTable Fill(string storedProcedure, List<SqlParameter> param)
        {
            try
            {
                using (this.connection)
                {
                    connection.Open();
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storedProcedure;

                    if (param != null)
                    {
                        foreach (SqlParameter p in param)
                        {
                            cmd.Parameters.Add(p);
                        }
                    }

                    DataTable ds = new DataTable();
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(ds);
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void ExecuteQuery(string storedProcedure, List<SqlParameter> param)
        {
            try
            {
                using (this.connection)
                {
                    connection.Open();
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storedProcedure;

                    if (param != null)
                    {
                        foreach (SqlParameter p in param)
                        {
                            cmd.Parameters.Add(p);
                        }
                    }

                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}