using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
   public  class ClsRecomendacion
    {
        public Object ConsultarTodos(int id)
        {
            ORMDataContext BD = new ORMDataContext();
            return from per in BD.recomendacion
                   where per.id_recomendacion == id
                   select per
                  
                   
                   ;
        }
    }
}
