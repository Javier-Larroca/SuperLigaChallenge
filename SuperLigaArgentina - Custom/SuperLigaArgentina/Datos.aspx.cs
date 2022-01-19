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
        public List<Socio> listaEstadoCivilEstudios;
        public List<string> nombresEquipos;
        public List<Equipo> equipos;

        List<Socio> socios = new List<Socio>();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                socios = socioNegocio.leerArchivo();
                equipos = equipoNegocio.resumenEquipos(socios);
                cantidad = socioNegocio.cantSocios(socios);
                listaEstadoCivilEstudios = socioNegocio.listarEstadoCivilEstudios(socios, estadoCivil.SelectedValue, nivelEstudios.SelectedValue);
                nombresEquipos = socioNegocio.listarNombres(socios, equipoNombres.SelectedValue);
                prom = socioNegocio.promEdadEquipo(socios, selectEquipoProm.SelectedValue);
            }
            catch (Exception)
            {
                Response.Redirect("Inicio.aspx");
                throw;
            }

        }

        protected void selectEquipoProm_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                prom = socioNegocio.promEdadEquipo(socios, selectEquipoProm.SelectedValue);
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void estadoCivil_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                listaEstadoCivilEstudios = socioNegocio.listarEstadoCivilEstudios(socios, estadoCivil.SelectedValue, nivelEstudios.SelectedValue);
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void nivelEstudios_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                listaEstadoCivilEstudios = socioNegocio.listarEstadoCivilEstudios(socios, estadoCivil.SelectedValue, nivelEstudios.SelectedValue);
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void equipoNombres_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                nombresEquipos = socioNegocio.listarNombres(socios, equipoNombres.SelectedValue);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}