using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
   public class ClsEspecialidadDAO
    {
        public void RegistrarEspecialidad(especialista especialidadP)
        {
            ORMDataContext BD = new ORMDataContext();
            BD.especialista.InsertOnSubmit(especialidadP);
            BD.SubmitChanges();

        }
        public Object ConsultarFiltros(int ciudad, string especialidad)
        {
            ORMDataContext BD = new ORMDataContext();
            return from per in BD.cita
                   
                   where per.especialista.id_ciudad == ciudad
                   where per.especialista.especialidad == especialidad
                   where per.estado == "Disponible"
                   select new
                   {
                      cita = per.id_cita,
                      hora =  per.hora_cita,
                      Dia = per.fecha_cita
                    
                   }
                   ;

        }
   
        public object ConsultarEspecialistas()
        {
            ORMDataContext BD = new ORMDataContext();
            return from c in BD.especialista
                   select c;
        }
    }
}
