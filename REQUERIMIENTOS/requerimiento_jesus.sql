use hicli;

-- Listado de trabajadores agrupados por especialidad.
select trabajador.idtra, persona.nomper, persona.apeper, especialidad.desesp
from trabajador inner join persona
on trabajador.idper = persona.idper
inner join especialidad
on trabajador.idesp = especialidad.idesp;

-- Listado de especialidades, trabajadores, personas y establecimientos con estado ACTIVO, solo datos necesarios.
select 
	persona.nomper,
    persona.apeper,
    persona.dniper,
    persona.celper,
    especialidad.desesp,
    trabajador.emailtra,
    establecimiento.estest
 from persona, especialidad, trabajador, establecimiento where estest = "A";

-- Vista que muestre un listado de todos los pacientes que tienen una Historia clínica por sexo.
select 
paciente.idpac,
persona.nomper,
persona.apeper,
persona.dniper,
persona.dirper,
persona.fecnacper,
persona.sexper,
persona.tipper, 
paciente.estpac
from paciente inner join persona
on persona.idper  = paciente.idper
inner join historia_clinica
on historia_clinica.idpac = paciente.idpac;