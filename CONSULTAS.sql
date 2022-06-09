select tutor.id_tutor,tutor.tipo_tutor
from tutor
inner join session on session.id_tutor = tutor.id_tutor
where (tutor.tipo_tutor = 'EXTERNO') OR (tutor.tipo_tutor = 'CONTRATACION')
order by tutor.tipo_tutor asc


select pago_tutoria.id_pago_tutoria, session.id_session, (EXTRACT(YEAR FROM pago_tutoria.fecha_pago)) as Año,
(EXTRACT(MONTH FROM pago_tutoria.fecha_pago)) as Mes, pago_tutoria.pago_tutoria
from pago_tutoria 
inner join session on session.id_session = pago_tutoria.id_pago_tutoria
order by pago_tutoria.id_pago_tutoria desc


select estudiante.id_estudiante,provincia.nombre_provincia,pais.nombre_pais 
from estudiante
inner join provincia on provincia.id_provincia = estudiante.id_estudiante
inner join pais on pais.id_pais = estudiante.id_estudiante
order by estudiante.id_estudiante asc

select session.id_session,session.estado_session,pago_tutoria.fecha_pago
from session
inner join pago_tutoria on pago_tutoria.id_pago_tutoria = session.id_session
where session.estado_session = 'RECHAZADA'
order by session.id_session asc
