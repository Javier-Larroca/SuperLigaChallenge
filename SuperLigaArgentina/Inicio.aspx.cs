using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace SuperLigaArgentina
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enviarArchivo_Click(object sender, EventArgs e)
        {
            try
            {
                System.IO.Directory.CreateDirectory("C:/CsvFolder/");
                if (File.Exists(WebConfigurationManager.AppSettings["CsvFolder"] + archivoCsv.PostedFile.FileName))
                {
                    File.Delete(WebConfigurationManager.AppSettings["CsvFolder"] + archivoCsv.PostedFile.FileName);
                }
                archivoCsv.PostedFile.SaveAs(WebConfigurationManager.AppSettings["CsvFolder"] + "archivo.csv");
               
                Response.Redirect("Datos.aspx");
            }
            catch (Exception)
            {
                throw;
            }

        }
    }
}