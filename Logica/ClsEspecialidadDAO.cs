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
    }
}
