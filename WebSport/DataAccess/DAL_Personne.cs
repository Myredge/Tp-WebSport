using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_Personne
    {
        public static DA_Personnes.PersonneDataTable DonneToutes()
        {
            return new DA_PersonnesTableAdapters.PersonneTableAdapter().DonneToutes();
        }
    }
}
