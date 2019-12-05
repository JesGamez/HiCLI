use hicli;
-- JEAN
-- Listado de las enfermedades que más afectan a los pacientes.
SELECT CE.CODENF, EN.DESCENF, COUNT(*) AS CONTAR FROM HISTORIA_CLINICA AS HC
INNER JOIN CONSULTA_ENFERMEDAD AS CE ON CE.CODHISCLI = HC.CODHISCLI
INNER JOIN ENFERMEDAD AS EN ON EN.CODENF =	CE.CODENF
GROUP BY EN.DESCENF asc
ORDER BY CONTAR;
-- Reporte de especialidades de estado activo
imagen
-- Cuántos pacientes se atendieron por dia agrupados por un establecimiento.

-- JESUS
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


-- DIEGO
-- Consulta que visualice en que establecimientos se atendió el paciente.
select 
persona.idper,
concat(persona.nomper,' ',persona.apeper) AS PACIENTE,
establecimiento.nomest AS ESTABLECIMIENTO
from historia_clinica 
inner join paciente on historia_clinica.IDPAC = paciente.IDPAC
inner join trabajador on historia_clinica.IDTRA = trabajador.IDTRA
inner join establecimiento on trabajador.IDEST = establecimiento.IDEST
inner join persona on paciente.IDPER = persona.IDPER;

-- Lista de la cantidad de trabajadores por establecimiento.
SELECT 
ESTABLECIMIENTO.NOMEST AS ESTABLECIMIENTO, 
COUNT(TRABAJADOR.IDTRA) AS TRABAJADORES
FROM ESTABLECIMIENTO
LEFT JOIN TRABAJADOR
ON ESTABLECIMIENTO.IDEST = TRABAJADOR.IDEST
GROUP BY ESTABLECIMIENTO.IDEST ASC;

-- Vista de los pacientes con sus respectivos acompañantes con busqueda con parametros.
SELECT
pp.NOMPER AS PACIENTE,
pa.NOMPER AS ACOMPAÑANTE
FROM PACIENTE_ACOMPANANTE
INNER JOIN PACIENTE ON PACIENTE_ACOMPANANTE.IDPAC = PACIENTE.IDPAC
INNER JOIN PERSONA pp ON PACIENTE.IDPER = pp.IDPER
INNER JOIN PERSONA pa ON PACIENTE_ACOMPANANTE.IDPER = pa.IDPER
WHERE pp.NOMPER LIKE '%%';

-- Consulta de pacientes atendidos por establecimiento.
SELECT 
ESTABLECIMIENTO.NOMEST AS ESTABLECIMIENTO,
COUNT(HISTORIA_CLINICA.IDPAC) AS PACIENTE
FROM ESTABLECIMIENTO
LEFT JOIN TRABAJADOR ON ESTABLECIMIENTO.IDEST = TRABAJADOR.IDEST
LEFT JOIN HISTORIA_CLINICA ON TRABAJADOR.IDTRA = HISTORIA_CLINICA.IDTRA
GROUP BY ESTABLECIMIENTO.IDEST ASC;
