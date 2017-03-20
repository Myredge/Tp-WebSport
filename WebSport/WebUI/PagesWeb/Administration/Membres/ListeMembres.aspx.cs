using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessService;
using BusinessObject;

namespace WebUI.PagesWeb.Administration.Membres
{
    public partial class ListeMembres : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // LES TESTS SONT OK !!!!

            //GV_LISTE_MEMBRE.DataSource = BLL_Personne.ListePersonne();
            //GV_LISTE_MEMBRE.DataBind();

            //DateTime datenaiss = new DateTime(1995, 03, 13);
            //Personne pers = BLL_Personne.personne("toto", "toto", "toto@toto.com", "0666666666", datenaiss, "toto", true);

            //BLL_Personne.addPersonne(pers);
        }
    }
}