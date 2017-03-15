using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Entities
{
    class Personne
    {
        public Personne() { }

        private int id { get; set; }
        private String Nom { get; set; }
        private String Prenom { get; set; }

        private String Email { get; set; }
        private String Password { get; set; }

        private DateTime dateNaissance { get; set; }

        private Role role { get; set; }
    }
}
