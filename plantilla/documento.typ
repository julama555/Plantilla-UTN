// Composición central: portada + encabezado + índice + contenido.
#import "portada.typ": portada
#import "encabezado.typ": encabezado
#import "estilos.typ": formato-informe

#let documento(datos, trabajo) = {
  set page(
    paper: "a4",
    margin: 0pt,
    background: image("assets/fondo.png", width: 100%, height: 100%, fit: "stretch"),
  )
  portada(datos, trabajo)
  pagebreak()

  // La hoja siguiente es Pg. 1; la portada queda sin numeración.
  counter(page).update(1)

  set page(
    margin: (top: 34mm, bottom: 22mm, left: 24mm, right: 24mm),
    background: none,
    header-ascent: 6mm,
    header: move(
      dx: -14mm,
      box(width: 190mm, encabezado(datos.materia)),
    ),
    numbering: "Pg. 1",
    number-align: bottom + right,
  )

  // Conserva el índice centrado y compacto.
  align(center)[
    #text(font: "Times New Roman", size: 16pt, weight: "bold")[ÍNDICE]
  ]
  v(8mm)
  align(center)[
    #block(width: 85%)[
      #outline(title: none, depth: 2, indent: 12pt)
    ]
  ]

  pagebreak()
  // Los estilos afectan al cuerpo, no a la portada.
  show: formato-informe
  trabajo.contenido
}
