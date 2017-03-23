using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using BusinessObject;
using System.Data;

namespace Common
{
    public class Utilitaire
    {

         public static string ConvertToJson(DataTable dt)
        {
            string JSONresult;
            JSONresult = JsonConvert.SerializeObject(dt);

            return JSONresult.ToString();
        }
    }
}
