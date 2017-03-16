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
        int ID;
        string Nom;
        string Prenom;

        public Personne(int nId, string strNom, string strPrenom)
        {
            this.ID = nId;
            this.Nom = strNom;
            this.Prenom = strPrenom;
        }


        public static List<Personne> ListePersonne()
        {
            List<Personne> personnes = new List<Personne>();
            DAL.DA_Personnes.PersonneDataTable dt = DAL.Personne.DonneToutes();

            foreach (DataRow oRow in dt)
            {
                Personne pers = new Personne(Convert.ToInt32(oRow["ID"]), oRow["Nom"].ToString(), oRow["Prenom"].ToString());

                personnes.Add(pers);
            }

            return personnes;
        }

    }
}
