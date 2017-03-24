using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_Participation
    {
        /// <summary>
        /// Donne Toutes les participations
        /// </summary>
        /// <returns></returns>
        public static DA_Participations.ParticipationDataTable DonneToutes()
        {
            return new DA_ParticipationsTableAdapters.ParticipationTableAdapter().DonneToutes();
        }

       /// <summary>
       /// Donne Tous les participants et leurs résultats pour UNE course
       /// </summary>
       /// <param name="nIdCourse"></param>
       /// <returns></returns>
        public static DA_Participations.ParticipationDataTable DonneTousLesParticipantsPourCourseID(int nIdCourse)
        {
            return new DA_ParticipationsTableAdapters.ParticipationTableAdapter().DonneTousLesParticipantsPourCourseID(nIdCourse);
        }

        /// <summary>
        /// Donne toutes les courses et leurs résultats pour UN participant
        /// </summary>
        /// <param name="nIdPersonne"></param>
        /// <returns></returns>
        public static DA_Participations.ParticipationDataTable DonneToutesLesCoursesPourPersonneID(int nIdPersonne)
        {
            return new DA_ParticipationsTableAdapters.ParticipationTableAdapter().DonneToutesLesCoursesPourPersonneID(nIdPersonne);
        }
        public static DA_Participations.ParticipationDataTable DonneParticipationPourPersonneIDEtCourseId(int nIdPersonne, int courseId)
        {
            return new DA_ParticipationsTableAdapters.ParticipationTableAdapter().donneCoursePourPersonneIdEtCourseID(nIdPersonne, courseId);
        }
        public static void  SupprimerParticipationPourPersonneIDEtCourseId(int nIdPersonne, int courseId)
        {
            new DA_ParticipationsTableAdapters.ParticipationTableAdapter().Delete(nIdPersonne, courseId);
       
        }

        public static void AjouterUneParticipation(int nIdPersonne, int courseId, Boolean estParticipant, Boolean estOrganisateur)
        {
            new DA_ParticipationsTableAdapters.ParticipationTableAdapter().Insert(nIdPersonne, courseId,estParticipant, estOrganisateur,null,
                null,null,null);

        }



    }
}
