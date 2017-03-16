using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class Personne
    {
        public static DA_Personnes.PersonneDataTable DonneToutes()
        {

            return new DA_Personnes.PersonnesTableAdapters().DonneToutes();
        }
    }

}
