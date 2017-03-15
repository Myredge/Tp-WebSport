using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Entities
{
    class Course
    {
        public Course() { }

        private int id { get; set; }

        private DateTime dateCourse { get; set; }

        private float Distance { get; set; }

        private String lieu { get; set; }
        private int MaxInscription { get; set; }

        private Personne Admin { get; set; }

        private Boolean etat { get; set; }
    }
}
