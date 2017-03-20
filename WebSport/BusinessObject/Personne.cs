using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject
{
    public class Personne
    {
        public int ID { get; set; }
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string Email { get; set; }
        public string Tel { get; set; }
        public DateTime DateNaiss { get; set; }
        public string MotDePasse { get; set; }
        public bool bActif { get; set; }
        public string Sexe { get; set; }
        public bool bIsAdmin { get; set; }


        /// <summary>
        /// Constructeur lors de création de compte
        /// </summary>
        /// <param name="nId"></param>
        /// <param name="strNom"></param>
        /// <param name="strPrenom"></param>
        public Personne(string strNom, string strPrenom, string strEmail, string strMotDePasse, bool bActif = true, bool bIsAdmin = false, string strSexe)
        {
            this.Nom = strNom;
            this.Prenom = strPrenom;
            this.Email = strEmail;
            this.MotDePasse = strMotDePasse;
            this.bActif = bActif;
            this.Sexe = strSexe;
            this.bIsAdmin = bIsAdmin;
        }
        // ERREUR ICI ???

        /// <summary>
        /// Constructeur lors de création de compte côté admin
        /// </summary>
        /// <param name="strNom"></param>
        /// <param name="strPrenom"></param>
        /// <param name="strEmail"></param>
        /// <param name="strTel"></param>
        /// <param name="dtDateNaiss"></param>
        /// <param name="strMotDePasse"></param>
        /// <param name="bActif"></param>
        public Personne(string strNom, string strPrenom, string strEmail, string strTel, DateTime dtDateNaiss, string strMotDePasse, bool bActif, bool bIsAdmin, string strSexe)
        {
            this.Nom = strNom;
            this.Prenom = strPrenom;
            this.Email = strEmail;
            this.Tel = strTel;
            this.DateNaiss = dtDateNaiss;
            this.MotDePasse = strMotDePasse;
            this.bActif = bActif;
            this.bIsAdmin = bIsAdmin;
            this.Sexe = strSexe;
        }




    }
}
