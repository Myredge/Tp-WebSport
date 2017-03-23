using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject
{
    public class Statistique
    {
        public string category { get; set; }
        public int value { get; set; }

        public Statistique(string strCat, int nValue)
        {
            this.category = strCat;
            this.value = nValue;
        }
    }
}
