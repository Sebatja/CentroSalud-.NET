using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
  public  class PersonaCls
    {
        public void RegistrarPersona(persona person)
        {
            ORMDataContext BD = new ORMDataContext();
            BD.persona.InsertOnSubmit(person);
            BD.SubmitChanges();
                
        }
        public persona Login(int cedula,string password)
        {
            ORMDataContext BD = new ORMDataContext();
            var personaLogin = BD.sp_login(cedula, password);
            persona objPersona = new persona();
            foreach (var item in personaLogin)
            {
                objPersona.cedula = item.cedula;
                objPersona.id_rol = item.id_rol;
                objPersona.cedula = item.cedula;
                objPersona.nombre = item.nombre;
                objPersona.apellido = item.correo;
                objPersona.correo = item.correo;
                objPersona.cedula = item.cedula;
            }
            return objPersona;
        }
    }
}
