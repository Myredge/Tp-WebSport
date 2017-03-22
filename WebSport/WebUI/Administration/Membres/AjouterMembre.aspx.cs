using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessService;
using BusinessObject;

namespace WebUI.Administration.Membres
{
    public partial class AjouterMembre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //DateTime datenaiss = new DateTime(1995, 03, 13);
            //Personne pers = BLL_Personne.personne("toto", "toto", "toto@toto.com", "0666666666", datenaiss, "toto", true);

            //BLL_Personne.addPersonne(pers);
        }

        protected void enregistrerClick(object sender, EventArgs e)

        {
            try
            {
                Personne personne = BLL_Personne.personne(TB_NOM_VALUE.Text, TB_PRENOM_VALUE.Text, TB_EMAIL_VALUE.Text, TB_TEL_VALUE.Text
               , Convert.ToDateTime(TB_DATE_NAISS_VALUE.Text), TB_MOT_DE_PASSE_VALUE.Text, CB_ACTIVE.Checked, false, DDL_SEXE.SelectedItem.ToString());

                BLL_Personne.addPersonne(personne);
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