using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject
{
    public class Personne_Role
    {

        public int IdPersonneRole { get; set; }
        public string Libelle { get; set; }

        public Personne_Role(int nIdPersonneRole, string strLibelle)
        {
            this.IdPersonneRole = nIdPersonneRole;
            this.Libelle = strLibelle;
        }

    }
}
