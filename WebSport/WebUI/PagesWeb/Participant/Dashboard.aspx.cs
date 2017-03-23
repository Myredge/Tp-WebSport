using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessObject;


namespace WebUI.PagesWeb.Participant
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Personne personne = (Personne)Session["ID"];

            int test = personne.ID;

        }
    }
}