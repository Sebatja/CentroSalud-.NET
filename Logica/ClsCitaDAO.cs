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

    }

}
