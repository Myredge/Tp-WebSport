using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject
{
    public class Course
    {

        public int ID { get; set; }
        public string Titre { get; set; }
        public string Description { get; set; }
        public string Ville { get; set; }
        public DateTime DateDebut { get; set; }
        public DateTime DateFin { get; set; }



        /// <summary>
        /// TODO
        /// </summary>
        /// <param name="strTitre"></param>
        /// <param name="strDescription"></param>
        /// <param name="dtDateDebut"></param>
        /// <param name="dtDateFin"></param>
        /// <param name="strVille"></param>
        public Course(string strTitre, string strDescription, DateTime dtDateDebut, DateTime dtDateFin, string strVille)
        {
            this.Titre = strTitre;
            this.Description = strDescription;
            this.DateDebut = dtDateDebut;
            this.DateFin = dtDateFin;
            this.Ville = strVille;
           
        }


        /// <summary>
        /// TODO
        /// </summary>
        /// <param name="nId"></param>
        /// <param name="strTitre"></param>
        /// <param name="strDescription"></param>
        /// <param name="dtDateDebut"></param>
        /// <param name="dtDateFin"></param>
        /// <param name="strVille"></param>
        public Course(int nId, string strTitre, string strDescription, DateTime dtDateDebut, DateTime dtDateFin, string strVille)
        {
            this.ID = nId;
            this.Titre = strTitre;
            this.Description = strDescription;
            this.DateDebut = dtDateDebut;
            this.DateFin = dtDateFin;
            this.Ville = strVille;
        }


    }
}
