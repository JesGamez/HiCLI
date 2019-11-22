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

- **PACIENTE_ACOMPAÑANTE:** Aqui se registraran las personas que tengan acompañantes..

- **ENFERMEDAD:** Aqui se registraran todas las enfermedades que existen hasta el dia de hoy..

- **CONSULTA_ENFERMEDAD:** Una persona puede tener múltiples enfermedades a lo largo de su historia clinica y para esto es esta tabla..

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

**10.** Un paciente puede tener un acompañante dependiendo de su edad.

**11.** Una Historia Clinica puede albergar multiples enfermedades.

### Requerimientos Funcionales

**1.** Listado de trabajadores agrupados por especialidad.

**2.** Listado de especialidades, trabajadores, personas y establecimientos con estado ACTIVO.

**3.** Consulta que visualice en que establecimientos se atendió el paciente.

**4.** Reporte de especialidades de estado activo o inactiva.

**5.** Consulta de pacientes atendidos por establecimiento.

**6.** Cuántos pacientes se atendieron por dia agrupados por un establecimiento.

**7.** Lista de la cantidad de trabajadores por establecimiento.

**8.** Vista de los pacientes con sus respectivos acompañantes con busqueda con parametros.

**9.** Listado de las enfermedades que más afectan a los pacientes.

**10.** Vista que muestre un listado de todos los pacientes que tienen una Historia clínica por sexo.

