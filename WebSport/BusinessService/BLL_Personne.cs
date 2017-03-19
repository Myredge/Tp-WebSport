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
    public class BLL_Personne
    {
        public static List<Personne> ListePersonne()
        {
            List<Personne> personnes = new List<Personne>();
            DA_Personnes.PersonneDataTable dt = DAL_Personne.DonneToutes();

            foreach (DataRow oRow in dt)
            {
                Personne pers = new Personne(Convert.ToInt32(oRow["ID"]), oRow["Nom"].ToString(), oRow["Prenom"].ToString());

                personnes.Add(pers);
            }

            return personnes;
        }
    }
}
