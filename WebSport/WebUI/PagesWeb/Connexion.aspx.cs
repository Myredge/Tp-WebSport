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
            try
            {
                Personne persConnecte = BLL_Personne.getPersonneConnecté(TB_EMAIL_VALUE.Text, TB_PASSWORD_VALUE.Text);
                
                if (persConnecte.bIsAdmin != true)
                {
                    
                    string IDvariable = "ID";
                    HttpContext.Current.Session.Add(IDvariable, persConnecte);

                    Response.Redirect("~/PagesWeb/Participant/Dashboard.aspx");
                }
                else
                {
                    Response.Redirect("~/Administration/Dashboard.aspx");
                }

            }
            catch
            {
               // Response.Redirect("~/PagesWeb/Connexion.aspx");
            }
            finally
            {
              
            }


        }
    }
}