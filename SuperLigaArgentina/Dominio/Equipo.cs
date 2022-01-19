using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Equipo
    {
        public string Nombre { get; set; }
        public int CantSocios { get; set; }
        public double PromEdad { get; set; }
        public int EdadMenor { get; set; }
        public int EdadMayor { get; set; }
        public string EscudoRuta { get; set; }

        public Equipo(string nombre)
        {
            Nombre = nombre;
            CantSocios = 0;
            PromEdad = 0;
            EdadMenor = 500;
            EdadMayor = 0;
        }
    }
}
