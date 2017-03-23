using BusinessService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebUI.PagesWeb.Administration.Courses
{
    public partial class ListeCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.BindGrid();

        }

        private void BindGrid()
        {


            GV_LISTE_COURSE.DataSource = BLL_Course.ListeCourses();
            GV_LISTE_COURSE.DataBind();


        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_LISTE_COURSE.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
    }
}