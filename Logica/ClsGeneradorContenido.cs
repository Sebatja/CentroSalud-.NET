using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
   public class ClsGeneradorContenido
    {
        public void RegistrarGeneradorContenido(generador_contenido generadorcontenidor)
        {
            ORMDataContext BD = new ORMDataContext();
            BD.generador_contenido.InsertOnSubmit(generadorcontenidor);
            BD.SubmitChanges();

        }
    }
}
