// Demostración: cambiá título y tema según el TP real.
#let trabajo = (
  titulo: "GENERADOR DE FUNCIONES",
  tema: "Trabajo práctico de demostración",
  contenido: [
    = Introducción

    Se presenta una estructura de informe para documentar un generador de funciones.
    Este texto es únicamente ilustrativo, no incluye mediciones experimentales.

    == Principio de funcionamiento

    Un generador puede combinar un disparador Schmitt, un integrador y un
    conformador para obtener señales de diferentes formas.

    = Resultados

    Incorporá aquí las capturas y mediciones reales del circuito.

    #figure(
      image("imagenes/diagrama.png", width: 52%),
      caption: [Esquema conceptual de tres bloques del generador.],
    ) <fig-diagrama>

    = Conclusiones

    Elaborá las conclusiones a partir de los resultados obtenidos.
  ],
)
