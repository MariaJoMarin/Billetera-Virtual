using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using c = Billetera_Virtual.Controller;
using m = Billetera_Virtual.Model;

namespace Billetera_Virtual
{
    public partial class Tarjeta : System.Web.UI.Page
    {
        public List<m.TarjetasM> LT { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            c.TarjetasC tarjetasC = new c.TarjetasC();

            List<m.TarjetasM> ListaTarjetas = tarjetasC.TraerTarjetas();
            LT = ListaTarjetas;
            repTarjetas.DataSource = ListaTarjetas;
            repTarjetas.DataBind();
        }
    }
}