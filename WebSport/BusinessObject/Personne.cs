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

        public Personne(int nId, string strNom, string strPrenom)
        {
            this.ID = nId;
            this.Nom = strNom;
            this.Prenom = strPrenom;
        }


      

    }
}
