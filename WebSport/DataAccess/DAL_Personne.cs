using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_Personne
    {
        /// <summary>
        /// Retourne la liste des "Personnes" depuis la BDD
        /// </summary>
        /// <returns></returns>
        public static DA_Personnes.PersonneDataTable DonneToutes()
        {
            return new DA_PersonnesTableAdapters.PersonneTableAdapter().DonneToutes();
        }

        /// <summary>
        /// Ajoute une personne dans la BDD
        /// </summary>
        /// <param name="strNom"></param>
        /// <param name="strPrenom"></param>
        /// <param name="strEmail"></param>
        /// <param name="strTel"></param>
        /// <param name="dtDateNaiss"></param>
        /// <param name="strMotdePasse"></param>
        /// <param name="bActif"></param>
        public static void Insert(string strNom, string strPrenom, string strEmail, string strTel,
            DateTime dtDateNaiss, string strMotdePasse, bool bActif, string strSexe, bool bIsAdmin)
        {
            new DA_PersonnesTableAdapters.PersonneTableAdapter().Insert(strNom, strPrenom, strEmail
                , strTel, dtDateNaiss, strMotdePasse, bActif, strSexe, bIsAdmin);
        }

        /// <summary>
        /// Retourne une "Personne" depuis la BDD
        /// </summary>
        /// <param name="nIdPersonne"></param>
        /// <returns></returns>
        public static DA_Personnes.PersonneDataTable DonnePersonnePourId(int nIdPersonne)
        {
            return new DA_PersonnesTableAdapters.PersonneTableAdapter().DonnePersonnePourID(nIdPersonne);
        }

        public static DataTable DonneNombrePersonneParSexe()
        {
            return new DA_PersonnesTableAdapters.PersonneTableAdapter().DonneNbPersonneParSexe();
        }
    }
}
