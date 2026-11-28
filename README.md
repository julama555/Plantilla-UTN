# Plantilla UTN FRVM · Typst modular

Plantilla de informes académicos con una sola portada y un único conjunto de estilos,
compartidos entre distintas materias y trabajos prácticos.

## Requisitos

- Visual Studio Code con **Tinymist Typst** (extensión Myriad Dreamin).
- Opcionales: Typst Companion, vscode-pdf, Codex.
- Fuentes recomendadas: Arial y Times New Roman. Si faltan, el sistema puede sustituirlas.

## Uso en VS Code

1. Abrí **esta carpeta raíz** (`Plantilla-UTN-Modular`) en VS Code.
2. Abrí `main.typ` y activá *Typst Preview* con Tinymist.
3. En `main.typ` cambiá únicamente **dos líneas `#import`** para seleccionar la materia y el TP:

```typst
#import "materias/aplicadas2/datos.typ": datos
#import "materias/aplicadas2/tp1/contenido.typ": trabajo
```

4. Editá `materias/<materia>/datos.typ` una sola vez para definir la materia, docentes e integrantes.
5. Editá `materias/<materia>/<tp>/contenido.typ` para cambiar título, tema, cuerpo e imágenes.
6. Guardá y exportá el PDF mediante Tinymist.

El `main.typ` solo integra partes. **No hay generador externo ni copias de plantilla por TP.**

## Crear un trabajo nuevo

1. Creá `materias/<materia>/tpN/imagenes/` y `materias/<materia>/tpN/contenido.typ`.
2. Usá como ejemplo el `contenido.typ` de uno de los TP existentes; solo necesitás mantener
   la estructura `#let trabajo = (titulo: ..., tema: ..., contenido: [...])`.
3. Guardá las imágenes dentro de `imagenes/` de ese TP y referencialas como `image("imagenes/foto.png")`.
4. Cambiá la línea de importación del trabajo en `main.typ`.

Para agregar una materia, creá también su `datos.typ`.

## Organización

- `main.typ`: integrador y selector del TP abierto.
- `plantilla/documento.typ`: estructura general, índice y paginación.
- `plantilla/portada.typ`: portada original con posiciones y tamaños preservados.
- `plantilla/encabezado.typ`: encabezado institucional.
- `plantilla/estilos.typ`: títulos, figuras, ecuaciones y tablas.
- `plantilla/assets/`: gráficos institucionales compartidos.
- `materias/<materia>/datos.typ`: datos compartidos de la materia.
- `materias/<materia>/<tp>/contenido.typ`: título, tema y contenido exclusivo del TP.
- `materias/<materia>/<tp>/imagenes/`: imágenes exclusivas del TP.

## Notas

- El índice incluye los encabezados de nivel 1 y 2.
- La portada no tiene numeración; las páginas interiores comienzan en `Pg. 1`.
- La función de diseño es compartida: modificarla afecta a todos los TP.
- El ejemplo de Aplicadas II es demostrativo y no contiene resultados experimentales reales.
- El proyecto debe compilarse desde la raíz para permitir acceso a todos los archivos.
- Los archivos gráficos y nombres de autores deben revisarse antes de publicar el proyecto.
- Si trabajás en GitHub, conservá la versión anterior en una rama o etiqueta antes de reemplazarla.
