
 // ESTILOS ACADÉMICOS - UTN FRVM
// Aplicables a las páginas interiores del informe.

#let formato-informe(body) = {

  // TEXTO GENERAL
  set text(
    font: "Times New Roman",
    size: 11pt,
    lang: "es",
    fill: black,
  )

  set par(
    justify: true,
  )

  // TÍTULOS PRINCIPALES
  show heading.where(level: 1): set text(
    font: "Times New Roman",
    size: 16pt,
    weight: "bold",
  )

  // SUBTÍTULOS
  show heading.where(level: 2): set text(
    font: "Times New Roman",
    size: 13pt,
    weight: "bold",
  )

  // FIGURAS: tamaño y ubicación
  show figure.where(kind: image): set align(center)
  show figure.where(kind: image): set figure.caption(
    position: bottom,
  )

  // DESCRIPCIÓN DE FIGURAS
  show figure.caption.where(kind: image): it => context {
    align(center, [
      #text(
        font: "Times New Roman",
        size: 11pt,
      )[
        #strong[
          Fig. N° #it.counter.display(it.numbering)
        ]
        #it.body
      ]
    ])
  }

  // ECUACIONES NUMERADAS
  set math.equation(
    numbering: "(Ecu. 1)",
    number-align: right + horizon,
  )


  // TABLAS ACADÉMICAS
  set table(
    stroke: 0.4pt,
    fill: white,
    inset: (x: 7pt, y: 4pt),
    align: left + horizon,
  )

  // DESCRIPCIÓN Y NUMERACIÓN
  show figure.where(kind: table): set align(center)

  show figure.caption.where(kind: table): it => context {
    align(center)[
      #text(font: "Times New Roman", size: 11pt)[
        #strong[
          Tabla #it.counter.display(it.numbering):
        ]
        #emph[#it.body]
      ]
    ]
  }


  body
}
