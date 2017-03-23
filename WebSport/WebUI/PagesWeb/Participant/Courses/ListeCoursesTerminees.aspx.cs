using BusinessService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebUI.PagesWeb.Participant.Courses
{
    public partial class ListeCoursesTerminees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.BindGrid();
        }

        private void BindGrid()
        {


            GV_LISTE_COURSE_TERMINEE.DataSource = BLL_Course.ListeCoursesTerminees();
            GV_LISTE_COURSE_TERMINEE.DataBind();


        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_LISTE_COURSE_TERMINEE.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

    }
}