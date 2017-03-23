using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessObject;
using DAL;
using System.Data;
using Common;

namespace BusinessService
{
    public class BLL_Statistique
    {

        public static string NombrePersonneParSexe()
        {
            DataTable dt = DAL_Personne.DonneNombrePersonneParSexe();

            DataTable TableStats = new DataTable();
            TableStats.Columns.Add("category");
            TableStats.Columns.Add("value");

            foreach (DataRow oRow in dt.Rows)
            {

                object[] o = {oRow["Sexe"].ToString(), Convert.ToInt32(oRow["nb"]) };
                TableStats.Rows.Add(o);
            }

            string Json = Common.Utilitaire.ConvertToJson(TableStats);

            return Json;
        }
    }
}
