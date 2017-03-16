using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject
{
    class Course
    {
        public Course() { }

        private int id { get; set; }
        private DateTime dateCours { get; set; }
        private Double distance { get; set; }
        private int MaxInscription { get; set; }
        private Personne Admin { get; set; }
        private Boolean etat { get; set; }
    }
}
