using System;
using System.Collections.Generic;
using BusinessObject;
using DAL;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace BusinessService
{
    public class BLL_Participation
    {
        public static List<Participation> ListeParticipations()
        {
            List<Participation> participations = new List<Participation>();
            DA_Participations.ParticipationDataTable dt = DAL_Participation.DonneToutes();

            foreach (DataRow oRow in dt)
            {
                //Get Personne pour ID
                // Get Course pour ID

                //Participation participation = new Participation(oRow["Titre"].ToString(), oRow["Description"].ToString(),
                // Convert.ToDateTime(oRow["DateDebut"].ToString()),
                //    Convert.ToDateTime(oRow["DateFin"].ToString()), oRow["Ville"].ToString()
                //    );

               // participations.Add(participation);
            }

            return participations;
        }
    }
}
