using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class SocioNegocio
    {
        public List<Socio> leerArchivo()
        {
            List<Socio> socios = new List<Socio>();

            string rutaArchivo = "C:\\CsvFolder\\archivo.csv";
            System.IO.StreamReader archivo = new System.IO.StreamReader(rutaArchivo);
            string linea;
            while ((linea = archivo.ReadLine()) != null)
            {
                string[] fila = linea.Split(';');
                string nombre = fila[0];
                int edad = Convert.ToInt32(fila[1]);
                string equipo = fila[2];
                string estadoCivil = fila[3];
                string nivelDeEstudios = fila[4];
                Socio socio = new Socio(nombre, edad, equipo, estadoCivil, nivelDeEstudios);
                socios.Add(socio);
            }
            return socios;
        }

        //1
        public int cantSocios(List<Socio> socios)
        {
            int cant = socios.Count();
            return cant;
        }

        //2
        public double promRacing(List<Socio> socios)
        {
            double prom;
            int cont = socios.Where(s => s.Equipo == "Racing").Count();
            int sum = socios.Where(s => s.Equipo == "Racing").Sum(so => so.Edad);

            prom = sum / cont;

            return prom;
        }

        //3
        public List<Socio> listarCasadosUniversitarios(List<Socio> socios)
        {
            List<Socio> sociosCasadosUniversitarios = new List<Socio>();

            sociosCasadosUniversitarios = socios.Where(s => s.EstadoCivil == "Casado" && s.NivelDeEstudios == "Universitario").ToList();

            sociosCasadosUniversitarios = sociosCasadosUniversitarios.GetRange(0, 100);
            sociosCasadosUniversitarios = sociosCasadosUniversitarios.OrderBy(s => s.Edad).ToList();

            return sociosCasadosUniversitarios;
        }

        //4
        public List<string> listarNombresRiver(List<Socio> socios)
        {
            List<string> nombresRiver = new List<string>();
            List<string> nombresRiverSR = new List<string>();

            nombresRiver = socios.Where(s => s.Equipo == "River").Select(n => n.Nombre).ToList();

            bool x;
            foreach (var nR in nombresRiver)
            {
                x = true;
                foreach (var nRSR in nombresRiverSR)
                {
                    if (nR == nRSR)
                    {
                        x = false;
                    }
                }
                if (x)
                {
                    nombresRiverSR.Add(nR);
                }
            }

            int cont = 0;
            int[] cantNombres = new int[nombresRiverSR.Count()];
            string[] nombres = { };
            nombres = nombresRiverSR.ToArray();
            foreach (var n in nombresRiverSR)
            {
                foreach (var nR in nombresRiver)
                {
                    if (nombres[cont] == nR)
                    {
                        cantNombres[cont]++;
                    }
                }
                cont++;
            }
            string aux;
            int auxN;
            for (int y = 0; y < nombresRiverSR.Count(); y++)
            {
                for (int i = 1; i < nombresRiverSR.Count(); i++)
                {
                    if (cantNombres[i] > cantNombres[i - 1])
                    {
                        aux = nombres[i];
                        auxN = cantNombres[i];
                        nombres[i] = nombres[i - 1];
                        cantNombres[i] = cantNombres[i - 1];
                        nombres[i - 1] = aux;
                        cantNombres[i - 1] = auxN;

                    }
                }
            }
            nombresRiverSR.Clear();
            for (int i = 0; i < 5; i++)
            {
                nombresRiverSR.Add(nombres[i]);
            }

            return nombresRiverSR;
        }
    }
}
