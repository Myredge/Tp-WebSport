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


        public static Personne ListePersonne()
        {


            IList<Personne> personnes;
            DAL.DA_Personnes dt = DAL.Personne.DonneToutes();

            foreach (DataRow oRow in dt)
            {
                Personne pers = new Personne(dt)
            }



            IList<Personne> personnes = .AsEnumerable().Select(row =>
    new Personne()
    {
        id = row.Field<int>("id"),
        name = row.Field<string>("name")
    }).ToList();

        }

    }
}
