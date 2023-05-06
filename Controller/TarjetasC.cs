using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using m = Billetera_Virtual.Model;
using d = Billetera_Virtual.DatabaseHelper;
using System.Data;

namespace Billetera_Virtual.Controller
{
    public class TarjetasC
    {
        public void GuardarTrajetas(List<m.TarjetasM> tarjetas ) {
            d.Database database = new d.Database();
            database.GuardarTarjeta( tarjetas );
        }

        public List<m.TarjetasM> TraerTarjetas()
        {
            d.Database database = new d.Database();
            return ConvertirDataTable(database.TraerTarjetas());
        }
        public List<m.TarjetasM> ConvertirDataTable(DataTable dataTable)
        {
            List<m.TarjetasM> tarjetas = new List<m.TarjetasM>();
            foreach (DataRow row in dataTable.Rows)
            {
                tarjetas.Add(new m.TarjetasM
                {
                    Foto = row["Foto"].ToString(),
                    Banco = row["Banco"].ToString(),
                    Emisor = row["Emisor"].ToString(),
                    Propietario = row ["Propietario"].ToString(),
                    NTarjeta = row ["NTarjeta"].ToString(),
                    Codigo = row["Codigo"].ToString(),
                    FechaMes = row ["FechaMes"].ToString(),
                    FechaYear = row ["FechaYear"].ToString(),
                });
            }
            return tarjetas;
        }
    }
}