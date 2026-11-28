// Solo lo particular de este TP: título, tema, contenido e imágenes.
#let trabajo = (
  titulo: "MODULACIÓN ANALÓGICA EN AMPLITUD",
  tema: "Trabajo Práctico N° 1",
  contenido: [
    = Introducción

    Este es un documento de demostración de la plantilla académica UTN FRVM.
    Los datos de profesores e integrantes se cargan desde la carpeta de la materia.

    == Presentación institucional

    #figure(
      image("imagenes/UTN_logo.jpg", width: 15%),
      caption: [Logotipo institucional de la UTN.],
    ) <fig-utn>

    = Fundamentos teóricos

    La ley de Ohm se expresa como:

    $ V = R dot I $ <ec-ohm>

    La figura @fig-utn y la ecuación @ec-ohm tienen referencias automáticas.

    = Conclusión

    Este informe comprueba la separación entre información académica,
    contenido del trabajo y diseño reutilizable.

    #pagebreak()
    = Anexo I

    #align(center)[
      #image("imagenes/TL494.png", width: 90%)
    ]

    #pagebreak()
    = Anexo II

    #align(center)[
      #image("imagenes/555.png", width: 90%)
    ]
  ],
)
