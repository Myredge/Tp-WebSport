using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessObject;
using BusinessService;


namespace WebUI.PagesWeb.Participant
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }


        public string DonneStatsCourses()
        {

            string json = BLL_Statistique.NombreCoursesDipoParVille();

            return json;
            // return "toto";
        }
    }
}