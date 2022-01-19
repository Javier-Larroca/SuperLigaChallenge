using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuperLigaArgentina
{
    public partial class Datos : System.Web.UI.Page
    {
        private SocioNegocio socioNegocio = new SocioNegocio();
        private EquipoNegocio equipoNegocio = new EquipoNegocio();

        public int cantidad;
        public double prom;
        public List<Socio> listaCasadosUniversitarios;
        public List<string> nombresRiver;
        public List<Equipo> equipos;
        protected void Page_Load(object sender, EventArgs e)
        {

            List<Socio> socios = new List<Socio>();
            try
            {
                socios = socioNegocio.leerArchivo();
                cantidad = socioNegocio.cantSocios(socios);
                prom = socioNegocio.promRacing(socios);
                listaCasadosUniversitarios = socioNegocio.listarCasadosUniversitarios(socios);
                nombresRiver = socioNegocio.listarNombresRiver(socios);
                equipos = equipoNegocio.resumenEquipos(socios);
            }
            catch (Exception)
            {
                Response.Redirect("Inicio.aspx");
                throw;
            }

        }
    }
}