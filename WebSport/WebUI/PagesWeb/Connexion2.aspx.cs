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
    public partial class Connexion2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginClick(object sender, EventArgs e)

        {
            try
            {
                
               

                //BLL_Personne.getPersonneConnecté(TB_EMAIL_VALUE.tex);
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