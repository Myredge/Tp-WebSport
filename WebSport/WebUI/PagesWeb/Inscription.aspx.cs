using BusinessObject;
using BusinessService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebUI.PagesWeb
{
    public partial class Inscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void enregistrerClick(object sender, EventArgs e)

        {
            try
            {
                Personne personne = BLL_Personne.personne(TB_NOM_VALUE.Text, TB_PRENOM_VALUE.Text, TB_EMAIL_VALUE.Text, null
               , Convert.ToDateTime(TB_DATE_NAISS_VALUE.Text), TB_MOT_DE_PASSE_VALUE.Text, true, false, DDL_SEXE.SelectedItem.ToString());
                        
                BLL_Personne.addPersonne(personne);
            }
            catch
            {
                    
            }
            finally
            {
                Response.Redirect("~/PagesWeb/Connexion.aspx");
            }


        }
    }
}