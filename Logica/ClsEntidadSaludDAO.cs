using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
   public class ClsEntidadSaludDAO
    {
        public void RegistrarEntidad(ente_salud entesalud)
        {
            ORMDataContext BD = new ORMDataContext();
            BD.ente_salud.InsertOnSubmit(entesalud);
            BD.SubmitChanges();

        }
        public object ConsultarTodos()
        {
            ORMDataContext BD = new ORMDataContext();
            return from c in BD.ente_salud
                   select new
                   {
                       nit = c.nit,
                       razon_social = c.razon_social,
                   };
        }
    }
}
