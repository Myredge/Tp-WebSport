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
                Personne pers = BLL_Personne.getPersonne(Convert.ToInt32(oRow["PersonneId"]));
                //Get Course pour ID
                Course course = BLL_Course.getCourse(Convert.ToInt32(oRow["CourseId"]));

                //Participation participation = new Participation(pers, course);
                    //);

               // participations.Add(participation);
            }

            return participations;
        }
    }
}
