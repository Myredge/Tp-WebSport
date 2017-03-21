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
    public partial class ListeMembres : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // LES TESTS SONT OK !!!!
           
                this.BindGrid();
            

        }

        private void BindGrid()
        {


            GV_LISTE_MEMBRE.DataSource = BLL_Personne.ListePersonnes();
            GV_LISTE_MEMBRE.DataBind();
       
            
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_LISTE_MEMBRE.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
    }
}