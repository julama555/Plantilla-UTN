
 // PLANTILLA DE PORTADA UTN FRVM | Typst + Tinymist
// Datos editables en datos.typ. Imágenes en assets/.

#import "datos.typ": carrera, materia, profesor, jtp, tema, titulo, alumnos, lugar_fecha
#import "encabezado.typ": encabezado
#import "estilos.typ": formato-informe

// CONFIGURACIÓN DE PORTADA
#set page(
  paper: "a4",
  margin: 0pt,
  background: image(
    "assets/fondo.png",
    width: 100%,
    height: 100%,
    fit: "stretch",
  ),
)

#set text(font: "Arial", size: 9pt, lang: "es")

// LOGOTIPO UTN
#place(top + left, dx: 59mm, dy: 10mm)[
  #image(
    "assets/logo_utn.png",
    width: 86mm,
    height: 109mm,
    fit: "contain",
  )
]

// TÍTULO EDITABLE
#place(top + left, dx: 59mm, dy: 170mm)[
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
#place(top + left, dx: 3.2mm, dy: 256mm)[
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

// FECHA DE PORTADA
#place(bottom + center, dy: -4mm)[
  #text(font: "Arial", size: 11pt)[#lugar_fecha]
]

// FIN DE PORTADA
#pagebreak()

// REINICIAR CONTADOR DE PÁGINAS
#counter(page).update(1)

// CONFIGURACIÓN DE PÁGINAS INTERIORES
#set page(
  margin: (
    top: 34mm,
    bottom: 22mm,
    left: 24mm,
    right: 24mm,
  ),

  background: none,

  // Encabezado institucional
  header-ascent: 6mm,
  header: move(
    dx: -14mm,
    box(
      width: 190mm,
      encabezado(materia),
    ),
  ),

  // Numeración automática
  numbering: "Pg. 1",
  number-align: bottom + right,
)




// ÍNDICE CENTRADO Y COMPACTO
#align(center)[
  #text(
    font: "Times New Roman",
    size: 16pt,
    weight: "bold",
  )[ÍNDICE]
]

#v(8mm)

// Contenedor centrado con ancho reducido
#align(center)[
  #block(width: 85%)[
    #outline(
      title: none,
      depth: 2,
      indent: 12pt,
    )
  ]
]


// FORMATO DEL INFORME
#show: formato-informe


// CONTENIDO DEL INFORME


#pagebreak()

= Introducción

Este documento demuestra el funcionamiento
de la plantilla académica de la UTN FRVM.

== Presentación institucional

La siguiente figura muestra el logotipo
institucional de la Universidad Tecnológica
Nacional.

#figure(
  image(
    "assets/UTN_logo.jpg",
    width: 15%,
  ),
  caption: [Logotipo institucional de la UTN.],
) <fig-utn>

= Fundamentos teóricos

A continuación se presenta la ley de Ohm:

$ V = R dot I $ <ec-ohm>

Como se observa en @fig-utn, el logotipo
identifica a la institución.

La relación entre tensión, corriente y
resistencia se expresa en @ec-ohm.

= Conclusión

La plantilla permite incorporar títulos,
subtítulos, figuras, ecuaciones y referencias
con formato académico uniforme.


#pagebreak()

= Anexo I

#align(center)[
  #image("assets/TL494.png", width: 90%)
]
#pagebreak()

= Anexo II

#align(center)[
  #image("assets/555.png", width: 90%)
]
