# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Empleado.create(num_empleado: 0,nombre:"dummy", apellido_paterno: "file", apellido_materno: "file", centro_id: 1, departamento_id: 1, puesto_id: 1, activo: false)
Empleado.create(num_empleado: 336958,nombre:"MONICA", apellido_paterno: "GUTIERREZ", apellido_materno: "SAMANIEGO", centro_id: 1, departamento_id: 1, puesto_id: 1, activo: true)
Empleado.create(num_empleado: 145865,nombre:"HECTOR RICARDO", apellido_paterno: "FUENTES", apellido_materno: "ARMENTA", centro_id: 2, departamento_id: 1, puesto_id: 3, activo: true)
Empleado.create(num_empleado: 72568,nombre:"ALEJANDRO", apellido_paterno: "PRADO", apellido_materno: "SALCIDO", centro_id: 1, departamento_id: 2, puesto_id: 4, activo: true)
Empleado.create(num_empleado: 334585,nombre:"MONY", apellido_paterno: "FAIRY", apellido_materno: "QUEEN", centro_id: 1, departamento_id: 1, puesto_id: 1, activo: true)


Centro.create(centro_iden: 53, centro_descripcion: "SUBDELEGACION MEDICA")
Centro.create(centro_iden: 105, centro_descripcion: "SUBDELEGACION DE ADMINISTRACION")
Centro.create(centro_iden: 74, centro_descripcion: "SUBDELEGACION DE PRESTACIONES")

Departamento.create(dpto_descripcion: "RECURSOS HUMANOS",centro_id: 2)
Departamento.create(dpto_descripcion: "SISTEMAS",centro_id: 2)

Puesto.create(name: "APOYO ADMINISTRATIVO EN SALUD A1")
Puesto.create(name: "APOYO ADMINISTRATIVO EN SALUD A2")
Puesto.create(name: "APOYO ADMINISTRATIVO EN SALUD A3")
Puesto.create(name: "APOYO ADMINISTRATIVO EN SALUD A4")
Puesto.create(name: "APOYO ADMINISTRATIVO EN SALUD A5")

Incident.create(cod: 1, name: "Retardo de 11 a 29 Minutos")
Incident.create(cod: 2, name: "Retardo de 30 a 45 Minutos")
Incident.create(cod: 3, name: "Retardo de 46 a 59 Minutos")
Incident.create(cod: 4, name: "Pago de media jornada laboral")
Incident.create(cod: 7, name: "Retardo por consulta medica")
Incident.create(cod: 41, name: "Licencia con goce de sueldo")
Incident.create(cod: 55, name: "Licencia medica")
Incident.create(cod: 60, name: "Vacaciones ordinarias")

Vacation.create(period: 1, year: "2014")
Vacation.create(period: 2, year: "2014")
Vacation.create(period: 1, year: "2015")
Vacation.create(period: 2, year: "2015")



