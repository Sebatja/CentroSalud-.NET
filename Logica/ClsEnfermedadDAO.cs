using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class ClsEnfermedadDAO
    {
        public Object ConsultarTodos()
        {
            ORMDataContext BD = new ORMDataContext();
            return from per in BD.enfermedad
                   select per;
                   ;
        }
    }
}
