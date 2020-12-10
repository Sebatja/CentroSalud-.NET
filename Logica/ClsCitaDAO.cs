using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
   public class ClsCitaDAO
    {
        public void AsignarCita(int id, string id_persona)
        {
            ORMDataContext BD = new ORMDataContext();
            string mensaje = string.Empty;
            
                cita citAgendar = (from per in BD.cita
                                             where per.id_cita == id
                                             select per).FirstOrDefault();
                citAgendar.id_persona = int.Parse(id_persona);
                citAgendar.estado = "En Desarrollo";
            
                BD.SubmitChanges();
           

        }
        //lita  de lo que ve el especialista
        public Object MisCitasEspecialista(string id_persona)
        {
            ORMDataContext BD = new ORMDataContext();
            return from per in BD.cita

                   where per.id_especialista == int.Parse(id_persona)
                   where per.estado == "En Desarrollo"
                   select new
                   {
                       cita = per.id_cita,
                       hora = per.hora_cita,
                       Dia = per.fecha_cita

                   }
                   ;

        }
        
        public void FinalidadCita(int id_cita)
        {
            ORMDataContext BD = new ORMDataContext();
            var citaf = from per in BD.cita
                                        where per.id_cita == id_cita
                                        select per;
            cita objCita = new cita();
            foreach (var item in citaf)
            {
                objCita.id_cita = id_cita + 600;
                objCita.id_persona = item.id_persona;
                objCita.id_especialista = item.id_especialista;
                objCita.fecha_cita = item.fecha_cita;
                objCita.hora_cita = item.hora_cita;
                objCita.calificacion = item.calificacion;
                objCita.estado = "Finalizada";
              
            }


            BD.cita.InsertOnSubmit(objCita);//Insertar


            cita citaR = (from per in BD.cita
                               where per.id_cita == id_cita
                                  select per).FirstOrDefault();
            citaR.id_persona = null;
            citaR.estado = "Disponible";

            BD.SubmitChanges();

        }
        //lita  de lo que ve la persona (el que aplico la cita) para calificar
        public Object MisCitasPersona(string id_persona)
        {
            ORMDataContext BD = new ORMDataContext();
            return from per in BD.cita

                   where per.id_persona == int.Parse(id_persona)
                   where per.estado == "Finalizada"
                   select new
                   {
                       cita = per.id_cita,
                       hora = per.hora_cita,
                       Dia = per.fecha_cita

                   }
                   ;

        }
        public void CalificarCita(int id_cita, string calificacion)
        {
            ORMDataContext BD = new ORMDataContext();

            cita citCalificar = (from per in BD.cita
                               where per.id_cita == id_cita
                                 select per).FirstOrDefault();
            citCalificar.id_cita = id_cita;
            citCalificar.calificacion = int.Parse(calificacion);
            BD.SubmitChanges();


        }

    }

}
