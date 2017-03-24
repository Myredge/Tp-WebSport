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
        public static Participation getUneParticipation(Personne pers,Course course)
        {

            DataRow oRow = DAL_Participation.DonneParticipationPourPersonneIDEtCourseId(pers.ID, course.ID)[0];

            Participation participation = new Participation(BLL_Personne.getPersonne(Convert.ToInt32(oRow["PersonneId"])), BLL_Course.getCourse(Convert.ToInt32(oRow["CourseId"])) , Convert.ToBoolean(oRow["EstCompetiteur"]), Convert.ToBoolean(oRow["EstOrganisateur"]));


            return participation;
        }
        public static void supprimerUneParticipation(Personne pers,Course cours)
        {
            DAL_Participation.SupprimerParticipationPourPersonneIDEtCourseId(pers.ID, cours.ID);

        }
        public static void AjouterUneParticipation(Participation partcipation)
        {
            DAL_Participation.AjouterUneParticipation(partcipation.personne.ID, partcipation.course.ID, partcipation.EstCompetiteur, partcipation.EstOrganisateur);

        }
    }
}
