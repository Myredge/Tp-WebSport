using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessService;
using BusinessObject;

namespace WebUI.PagesWeb.Participant.Courses
{
    public partial class DetailCourseDisponible : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int nIdCourse = Convert.ToInt32(Request.QueryString["Id"]);
            Course course = BLL_Course.getCourse(nIdCourse);

            if(course != null)
            {
                LBL_TITRE_VALUE.Text = course.Titre;
                LBL_DESCRIPTION_VALUE.Text = course.Description;
                LBL_VILLE_VALUE.Text = course.Ville;
                LBL_DATE_DEBUT_VALUE.Text = course.DateDebut.ToString();
                LBL_DATE_FIN_VALUE.Text = course.DateFin.ToString();
            }


        }
    }
}