using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class EquipoNegocio
    {
        //5
        public List<Equipo> resumenEquipos(List<Socio> socios)
        {
            List<Equipo> equipos = new List<Equipo>();

            bool x;
            foreach (var s in socios)
            {
                x = true;
                foreach (var equipo in equipos)
                {
                    if (s.Equipo == equipo.Nombre)
                    {
                        x = false;
                    }
                }
                if (x)
                {
                    Equipo equipoN = new Equipo(s.Equipo);
                    equipos.Add(equipoN);
                }
            }

            foreach (var e in equipos)
            {
                foreach (var s in socios)
                {
                    if (e.Nombre == s.Equipo)
                    {
                        e.PromEdad += s.Edad;
                        e.CantSocios++;
                        if (e.EdadMayor < s.Edad)
                        {
                            e.EdadMayor = s.Edad;
                        }
                        if (e.EdadMenor > s.Edad)
                        {
                            e.EdadMenor = s.Edad;
                        }
                    }
                }
                switch (e.Nombre)
                {
                    case "Newells":
                        e.EscudoRuta = "img/equipos/newells.png";
                        break;
                    case "San Lorenzo":
                        e.EscudoRuta = "img/equipos/sanlorenzo.png";
                        break;
                    case "Rosario Central":
                        e.EscudoRuta = "img/equipos/rosariocentral.png";
                        break;
                    case "Boca":
                        e.EscudoRuta = "img/equipos/boca.png";
                        break;
                    case "Hurac�n":
                        e.EscudoRuta = "img/equipos/huracan.png";
                        break;
                    case "River":
                        e.EscudoRuta = "img/equipos/river.png";
                        break;
                    case "Velez":
                        e.EscudoRuta = "img/equipos/velez.png";
                        break;
                    case "Gimnasia LP":
                        e.EscudoRuta = "img/equipos/gimnasia.png";
                        break;
                    case "Independiente":
                        e.EscudoRuta = "img/equipos/independiente.png";
                        break;
                    case "Racing":
                        e.EscudoRuta = "img/equipos/racing.png";
                        break;
                    case "Estudiantes":
                        e.EscudoRuta = "img/equipos/estudiantes.png";
                        break;
                    default:
                        e.EscudoRuta = "img/equipos/error.png";
                        break;
                }
                e.PromEdad = e.PromEdad / e.CantSocios;
            }

            equipos = equipos.OrderByDescending(e => e.CantSocios).ToList();

            return equipos;

        }
    }
}
