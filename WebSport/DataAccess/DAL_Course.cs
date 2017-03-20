using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_Course
    {

        public static DA_Courses.CourseDataTable DonneToutes()
        {
            return new DA_CoursesTableAdapters.CourseTableAdapter().DonneToutes();
        }

        public static void Insert(string strTitre, string strDescription, DateTime dtDateDebut,
          DateTime dtDateFin, string strVille)
        {
            new DA_CoursesTableAdapters.CourseTableAdapter().Insert(strTitre, strDescription, dtDateDebut, dtDateFin, strVille);
        }

    }
}
