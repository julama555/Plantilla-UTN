
 // PORTADA INSTITUCIONAL UTN FRVM
// Datos de la materia y del trabajo práctico.

#let portada(datos, trabajo) = {
  let carrera = datos.carrera
  let materia = datos.materia
  let profesor = datos.profesor
  let jtp = datos.jtp
  let alumnos = datos.alumnos
  let titulo = trabajo.titulo
  let tema = trabajo.tema
  let lugar_fecha = trabajo.at(
    "lugar_fecha",
    default: datos.lugar_fecha,
  )

  set text(
    font: "Arial",
    size: 9pt,
    lang: "es",
  )

  // LOGOTIPO UTN
  place(top + left, dx: 59mm, dy: 10mm)[
    #image(
      "assets/logo_utn.png",
      width: 86mm,
      height: 109mm,
      fit: "contain",
    )
  ]

  // TÍTULO EDITABLE
  place(top + left, dx: 59mm, dy: 170mm)[
    #rotate(33deg, reflow: false)[
      #box(width: 83mm)[
        #align(center)[
          #text(
            font: "Arial",
            size: 14pt,
            weight: "bold",
            fill: rgb("BD8B00"),
          )[
            #titulo
          ]
        ]
      ]
    ]
  ]

  // DATOS ACADÉMICOS
  place(top + left, dx: 3.2mm, dy: 256mm)[
    #box(width: 165mm)[
      #set text(
        font: "Arial",
        size: 11pt,
        fill: black,
      )

      #set par(
        leading: 3pt,
        spacing: 0pt,
      )

      #let campo(etiqueta, valor) = [
        #text(
          fill: rgb("BF8B00"),
          weight: "bold",
        )[#etiqueta:] #valor \
      ]

      #campo("Carrera", carrera)
      #campo("Materia", materia)
      #campo("Profesor", profesor)
      #campo("J.T.P.", jtp)
      #campo("Tema", tema)
      #campo("Alumno", alumnos)
    ]
  ]

  // FECHA CENTRADA AL PIE
  place(bottom + center, dy: -4mm)[
    #text(
      font: "Arial",
      size: 11pt,
    )[
      #lugar_fecha
    ]
  ]
}
