## Base de Datos HiCli

Contiene la Base de Datos de Historias Clinicas, realizado en el motor MySQL.

### Estructura y descripción

Esta base de datos estará conformada por las siguientes tablas:

- **PERSONA:**Contiene todos los datos personales de las personas.
- **UBIGEO:**Contiene todos los Ubigeos del PERÚ.
- **ESTABLECIMIENTO:**ontiene todos los establecimientos de la SBS.
- **TRABAJADOR:**Contiene los datos principales de cada trabajador.
- **PACIENTE:**Contiene datos de los pacientes registrados.
- **HISTORIA_CLINICA:**Contiene las Historias Clinicas de todos los pacientes.
- **USUARIO:**Inicio de Sesión.
- **ESPECIALIDAD:**Esta tabla contiene todas las Especialidades de los trabajadores.

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