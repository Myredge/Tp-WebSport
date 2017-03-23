using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_Course
    {

        /// <summary>
        /// Récupère la liste de toute les courses
        /// </summary>
        /// <returns></returns>
        public static DA_Courses.CourseDataTable DonneToutes()
        {
            return new DA_CoursesTableAdapters.CourseTableAdapter().DonneToutes();
        }

        /// <summary>
        /// Récupère la liste de toute les courses en cours 
        /// </summary>
        /// <returns></returns> 
        public static DA_Courses.CourseDataTable DonneCoursesEnCours()
        {
            return new DA_CoursesTableAdapters.CourseTableAdapter().DonneCoursesEnCours();
        }

        /// <summary>
        /// Récupère la liste de toute les courses terminées 
        /// </summary>
        /// <returns></returns>
        public static DA_Courses.CourseDataTable DonneCoursesTerminees()
        {
            return new DA_CoursesTableAdapters.CourseTableAdapter(). DonneCoursesTerminees();
        }

        /// <summary>
        /// Insert une nouvelle Course en BDD
        /// </summary>
        /// <param name="strTitre"></param>
        /// <param name="strDescription"></param>
        /// <param name="dtDateDebut"></param>
        /// <param name="dtDateFin"></param>
        /// <param name="strVille"></param>
        public static void Insert(string strTitre, string strDescription, DateTime dtDateDebut,
          DateTime dtDateFin, string strVille)
        {
            new DA_CoursesTableAdapters.CourseTableAdapter().Insert(strTitre, strDescription, dtDateDebut, dtDateFin, strVille);
        }

        /// <summary>
        /// Retourne la Course dont l'ID est passé en paramètre
        /// </summary>
        /// <param name="nIdCourse"></param>
        /// <returns></returns>
        public static DA_Courses.CourseDataTable DonneCoursePourId(int nIdCourse)
        {
            return new DA_CoursesTableAdapters.CourseTableAdapter().DonneCoursePourID(nIdCourse);
        }

    }
}
