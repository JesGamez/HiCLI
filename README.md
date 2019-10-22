## Base de Datos HiCli

Contiene la Base de Datos de Historias Clinicas, realizado en el motor MySQL.
Se desarrollo con la finalidad de mostrar que la implementacion de un sistema 
estandarizado integra la informacion de las historias clinicas
permitiendo la optimizacion del proceso de atencion y mejorando la calidad de 
atencion a los pacientes del centro de salud.
Como resultado se obtiene un Sistema de un informacion que permite la eficiente 
integracion de la informacion clinica de las historias clinicas evitando la perdida 
de la informacion.

Esta base de datos estar� conformada por las siguientes tablas:

- **PERSONA:** Contiene todos los datos personales de las personas.

- **UBIGEO:** Contiene todos los Ubigeos del PER�.

- **ESTABLECIMIENTO:** Contiene todos los establecimientos de la SBS.

- **TRABAJADOR:** Contiene los datos principales de cada trabajador.

- **PACIENTE:** Contiene datos de los pacientes registrados.

- **HISTORIA_CLINICA:** Contiene las Historias Clinicas de todos los pacientes.

- **USUARIO:** Inicio de Sesi�n.

- **ESPECIALIDAD:** Esta tabla contiene todas las Especialidades de los trabajadores.

### Relaciones entre tablas

Para establecer las relaciones debe tener en cuenta lo siguiente:

**1.** Cada establecimiento tiene una ruta de Ubigeo distinta.

**2.** Cada persona tiene una ruta de Ubigeo distinta.

**3.** Los trabajadores son personas comunes pero con distinto cargo.

**4.** Los pacientes son personas comunes pero con distinto cargo.

**5.** Un paciente puede tener una sola historia clinica.

**6.** Muchos trabajadores puedes figurar en una historia clinica

**7.** Un establecimiento puede tener muchos trabajadores.

**8.** Un Trabajador puede tener un usuario.

**9.** Un trabajador puede tener una especialidad.

### Requerimientos Funcionales

**1.** Que no haya redundancia de datos.

**2.** Saber donde hay una historia clinica 

**3.** Reportes

**4.** Control de acceso a usuarios
