using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebUI.PagesWeb
{
    public partial class Connexion2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginClick(object sender, EventArgs e)

        {
            try
            {
                //Personne personne = BLL_Personne.personne();

                //BLL_Personne.addPersonne(personne);
            }
            catch
            {

            }
            finally
            {
                Response.Redirect("~/Administration/Membres/ListeMembres.aspx");
            }


        }
    }
}