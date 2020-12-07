using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class ClsCuidadDAO
    {
        public object ConsultarTodos()
        {
            ORMDataContext BD = new ORMDataContext();
            return from c in BD.ciudad
                   select c;
        }
    }
}
