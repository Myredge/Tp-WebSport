using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessObject;
using BusinessService;

namespace WebUI.PagesWeb.Administration.Courses
{
    public partial class AjouterCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void enregistrerClick(object sender, EventArgs e)

        {
            try
            {
                

                Course course = BLL_Course.course(TB_TITRE_VALUE.Text, TB_DESCRIPTION_VALUE.Text, Convert.ToDateTime(TB_DATE_DEBUT_VALUE.Text), Convert.ToDateTime(TB_DATE_FIN.Text), TB_VILLE_VALUE.Text);
                BLL_Course.addCourse(course);
            }
            catch
            {

            }
            finally
            {
                Response.Redirect("~/Administration/Membres/ListeCourses.aspx");
            }


        }
    }
}