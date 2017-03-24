using System;
using System.Collections.Generic;
using BusinessService;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessObject;
using Common;

namespace WebUI.Administration
{
    public partial class Dashbord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           string json = BLL_Statistique.NombrePersonneParSexe();

        }

        public string DonneStatsMembre()
        {

            string json = BLL_Statistique.NombrePersonneParSexe();

            return json;
           // return "toto";
        }

        public string DonneStatsCourses()
        {

            string json = BLL_Statistique.NombreCoursesDipoParVille();

            return json;
            // return "toto";
        }


   
    }
}