﻿using BusinessObject;
using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessService
{
    public class BLL_Personne
    {
        /// <summary>
        /// Returne la liste des personnes
        /// </summary>
        /// <returns></returns>
        public static List<Personne> ListePersonnes()
        {
            List<Personne> personnes = new List<Personne>();
            DA_Personnes.PersonneDataTable dt = DAL_Personne.DonneToutes();

            foreach (DataRow oRow in dt)
            {
                Personne pers = new Personne(oRow["Nom"].ToString(), oRow["Prenom"].ToString(), oRow["Email"].ToString(), oRow["MotDePasse"].ToString(), oRow["Sexe"].ToString());

                personnes.Add(pers);
            }

            return personnes;
        }

        /// <summary>
        /// Créer un objet de Classe "Personne"
        /// </summary>
        /// <param name="strNom"></param>
        /// <param name="strPrenom"></param>
        /// <param name="strEmail"></param>
        /// <param name="strTel"></param>
        /// <param name="dtDateNaiss"></param>
        /// <param name="strMotdePasse"></param>
        /// <param name="bActif"></param>
        /// <param name="Role"></param>
        /// <returns></returns>
        public static Personne personne(string strNom, string strPrenom, string strEmail, string strTel,
            DateTime dtDateNaiss, string strMotdePasse, bool bActif, bool bIsAdmin, string strSexe)
        {
            Personne personne = new Personne(strNom, strPrenom, strEmail
                , strTel, dtDateNaiss, strMotdePasse, bActif, bIsAdmin,strSexe);

            return personne;
        }

        /// <summary>
        /// Ajoute une nouvelle personne en BDD
        /// </summary>
        /// <param name="pers"></param>
        public static void addPersonne(Personne pers)
        {
            DAL_Personne.Insert(pers.Nom, pers.Prenom, pers.Email
                , pers.Tel, pers.DateNaiss, pers.MotDePasse, pers.bActif, pers.Sexe, pers.bIsAdmin);
        }

        public static Personne getPersonne(int nIdPersonne)
        {
            DataRow oRow = DAL_Personne.DonnePersonnePourId(nIdPersonne)[0];

            Personne pers = new Personne(oRow["Nom"].ToString(), oRow["Prenom"].ToString(), oRow["Email"].ToString(), oRow["MotDePasse"].ToString(), oRow["Sexe"].ToString());

            return pers;
        }

        public static Personne getPersonneConnecté(string strEmail, string strMdp)
        {

            DataRow oRow = DAL_Personne.ConnexionPersonne(strEmail, strMdp)[0];

            Personne pers = new Personne(Convert.ToInt32(oRow["Id"]),oRow["Nom"].ToString(), oRow["Prenom"].ToString(), oRow["Email"].ToString(), oRow["MotDePasse"].ToString(), oRow["Sexe"].ToString(), Convert.ToBoolean(oRow["bActif"]), Convert.ToBoolean(oRow["bIsAdmin"]));

            return pers;
        }


    }
}
