// Encabezado de las páginas del informe (no se muestra en la portada).
// La materia se toma de datos.typ; estos textos institucionales se pueden editar aquí.
#let encabezado(
  materia,
  sede: "UTN – FRVM",
  departamento: "Departamento de Electrónica",
  universidad: "Universidad Tecnológica Nacional",
) = {
  set text(font: "Times New Roman", size: 11pt, fill: rgb("#000000"))
  set par(leading: 5pt, spacing: 0pt)

  grid(
    columns: (16mm, 60mm, 1fr, 54mm),
    column-gutter: 6mm,
    align: (center + horizon, left + horizon, left + horizon, right + horizon),
    [
      #align(center)[
        #image("assets/UTN_logo.jpg", width: 16mm, height: 23mm, fit: "cover")
      ]
    ],
    [
      #align(center)[#move(dy: -1.5mm)[#sede]]
      #v(1.5mm)
      #departamento #linebreak()
      #universidad
    ],
    [],
    [
      #align(right)[
        #text(size: if materia.len() > 40 { 8pt } else { 10pt })[#materia]
      ]
    ],
  )
}
