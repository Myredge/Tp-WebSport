using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject
{
    public class Personne_Sexe
    {
        public int IdSexe { get; set; }
        public string Libelle { get; set; }

        public Personne_Sexe(int nIdSexe, string strLibelle)
        {
            this.IdSexe = nIdSexe;
            this.Libelle = strLibelle;
        }
    }
}
