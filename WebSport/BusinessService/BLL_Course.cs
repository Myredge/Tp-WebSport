using BusinessObject;
using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessService
{
    public class BLL_Course
    {

        /// <summary>
        /// Retourne la liste des "Courses"
        /// </summary>
        /// <returns></returns>
        public static List<Course> ListeCourses()
        {
            List<Course> courses = new List<Course>();
            DA_Courses.CourseDataTable dt = DAL_Course.DonneToutes();

            foreach (DataRow oRow in dt)
            {
                Course course = new Course(oRow["Titre"].ToString(), oRow["Description"].ToString(),
                    oRow["Ville"].ToString(), Convert.ToDateTime(oRow["DateDebut"].ToString()),
                    Convert.ToDateTime(oRow["DateFin"].ToString())
                    );

                courses.Add(course);
            }

            return courses;
        }

        /// <summary>
        /// Créer un object de classe "Course"
        /// </summary>
        /// <param name="strTitre"></param>
        /// <param name="strDescription"></param>
        /// <param name="strVille"></param>
        /// <param name="dtDateDebut"></param>
        /// <param name="dtDateFin"></param>
        /// <returns></returns>
        public static Course course(string strTitre, string strDescription, DateTime dtDateDebut,
          DateTime dtDateFin, string strVille)
        {
            Course course = new Course(strTitre, strDescription, dtDateDebut, dtDateFin, strVille);

            return course;
        }

        /// <summary>
        /// Insert une nouvelle course en BDD
        /// </summary>
        /// <param name="course"></param>
        public static void addCourse(Course course)
        {
            DAL_Course.Insert(course.Titre,course.Description, course.DateDebut, course.DateFin, course.Ville);
        }


    }
}
