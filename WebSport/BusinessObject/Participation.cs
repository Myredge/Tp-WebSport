using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject
{
    public class Participation
    {

        public Personne personne { get; set; }
        public Course course { get; set; }
        public bool EstCompetiteur { get; set; }
        public bool EstOrganisateur { get; set; }
        public TimeSpan Temps { get; set; }
        public int nRank { get; set; }
        public bool bAbandon { get; set; }
        public float nDistance { get; set; }

        public Participation(Personne cPerso, Course cCourse, bool bCompetiteur, bool bOrganisateur)
        {
            this.personne = cPerso;
            this.course = cCourse;
            this.EstCompetiteur = bCompetiteur;
            this.EstOrganisateur = bOrganisateur;
        }

    }
}
