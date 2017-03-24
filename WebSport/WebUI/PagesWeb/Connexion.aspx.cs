using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessObject;
using BusinessService;

namespace WebUI.PagesWeb
{
    public partial class Connexion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginClick(object sender, EventArgs e)

        {
            Personne persConnecte = BLL_Personne.getPersonneConnecté(TB_EMAIL_VALUE.Text, TB_PASSWORD_VALUE.Text);

            if (!persConnecte.bIsAdmin && persConnecte.bActif)
            {

                string IDvariable = "ID";
                HttpContext.Current.Session.Add(IDvariable, persConnecte);

                Response.Redirect("~/PagesWeb/Participant/Dashboard.aspx");
            }
            else if (persConnecte.bIsAdmin && persConnecte.bActif)
            {
                Response.Redirect("~/Administration/Dashboard.aspx");
            }
            else
            {
                // TODO : Ajouter une alerte JS : Erreur
                Response.Redirect("~/PagesWeb/Participant/Connexion.aspx");
            }



        }
    }
}