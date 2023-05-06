using Billetera_Virtual.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using m = Billetera_Virtual.Model;
using c = Billetera_Virtual.Controller;

namespace Billetera_Virtual.View
{
    public partial class ATarjetas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_ServerClick(object sender, EventArgs e)
        {

            List<m.TarjetasM> listaTarjetas = new List<m.TarjetasM>();
            TarjetasM tarjeta = new TarjetasM()
            {
                 
                Banco = selectBanco.Value,
                Emisor = selectEmisor.Value,
                Propietario = txt_propietario.Value,
                NTarjeta = txt_numero.Value,
                Codigo = num_codigo.Value,
                FechaMes = mes.Value,
                FechaYear = year.Value
            };
            if (selectBanco.Value == "BCR")
            {
                tarjeta.Foto = "../Imagenes/BCR.jpg";
            }
            else if (selectBanco.Value == "Popular")
            {
                tarjeta.Foto = "../Imagenes/BP.png";
            }else if (selectBanco.Value == "Nacional")
            {
                tarjeta.Foto = "../Imagenes/BN.png";
            }

            listaTarjetas.Add(tarjeta);

            c.TarjetasC istacia = new c.TarjetasC();
            istacia.GuardarTrajetas(listaTarjetas);

            Message("Se registro la nueva tarjeta");
            Response.Redirect("~/View/Tarjeta.aspx");
        }

        protected void Message(string mensaje)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alerta", $"alert('{mensaje}');", true);
        }

    }
}