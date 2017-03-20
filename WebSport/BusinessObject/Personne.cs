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
        public Personne_Role role { get; set; }
       // public Personne_Sexe sexe { get; set; }




        public Personne(int nId, string strNom, string strPrenom)
        {
            this.ID = nId;
            this.Nom = strNom;
            this.Prenom = strPrenom;
        }

        public Personne(string strNom, string strPrenom, string strEmail, string strTel, DateTime dtDateNaiss, string strMotDePasse, bool bActif)
        {
            this.Nom = strNom;
            this.Prenom = strPrenom;
            this.Email = strEmail;
            this.Tel = strTel;
            this.DateNaiss = dtDateNaiss;
            this.MotDePasse = strMotDePasse;
            this.bActif = bActif;
            //this.role = cRole;
        }




    }
}
