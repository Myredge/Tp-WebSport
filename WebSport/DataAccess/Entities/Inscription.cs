using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Entities
{
    class Inscription
    {
        public Inscription() { }

        private Course course { get; set; }
        private Personne personne { get; set; }

        private float distanceParcouru { get; set; }
        private int Kcal { get; set; }

        private Boolean estParticipant { get; set; }
        private Boolean estOrganisateur { get; set; }
    }
}
