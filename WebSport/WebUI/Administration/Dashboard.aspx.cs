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
            //LBL_TEST.Text = BLL_Personne.ListePersonnes()[0].Nom.ToString();

          





        }

        protected string DonneStatsMembre()
        {


            string json = BLL_Statistique.NombrePersonneParSexe();

            return json;
        }
    }
}