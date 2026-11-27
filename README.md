# PLANTILLA ACADÉMICA UTN FRVM - TYPST

Plantilla reutilizable para elaborar informes, trabajos prácticos y documentación técnica de Ingeniería Electrónica de la Universidad Tecnológica Nacional, Facultad Regional Villa María.

Permite generar documentos PDF con portada institucional, encabezados, numeración automática, títulos, subtítulos, imágenes, tablas, ecuaciones e índice.

## 1. REQUISITOS E INSTALACIÓN

### Programas necesarios

**Visual Studio Code**

Editor utilizado para modificar los documentos Typst.

Descarga: https://code.visualstudio.com/

**Tinymist Typst**

Extensión principal para trabajar con Typst en VS Code.

Incluye resaltado de sintaxis, autocompletado, diagnóstico de errores, vista previa y exportación a PDF.

Instalación:

1. Abrir Visual Studio Code.
2. Presionar `Ctrl + Shift + X`.
3. Buscar `Tinymist Typst`.
4. Instalar la extensión de Myriad Dreamin.

Enlace: https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist

### Extensiones opcionales

**Typst Companion**

Facilita la escritura mediante atajos y herramientas de edición.

https://marketplace.visualstudio.com/items?itemName=CalebFiggers.typst-companion

**Typst Sympy Calculator**

Proporciona herramientas complementarias de cálculo matemático.

**vscode-pdf**

Permite visualizar documentos PDF directamente dentro de VS Code.

https://marketplace.visualstudio.com/items?itemName=tomoki1207.pdf

**Codex (OpenAI)**

Asistente de inteligencia artificial para modificar, revisar y organizar los archivos del proyecto.

Estas extensiones opcionales no son necesarias para compilar la plantilla.

## 2. ESTRUCTURA DEL PROYECTO

La carpeta contiene:

- `main.typ`: documento principal, portada y contenido del informe.
- `datos.typ`: información académica editable.
- `encabezado.typ`: encabezado institucional de las páginas interiores.
- `estilos.typ`: formato de títulos, subtítulos, figuras, tablas y ecuaciones.
- `assets/`: imágenes, logotipos y fondo de portada.
- `main.pdf`: ejemplo de documento exportado.
- `LEEME.txt`: instrucciones de uso.

Para que el proyecto funcione correctamente, conservar las rutas y nombres de los archivos utilizados en el código.

## 3. CÓMO UTILIZAR LA PLANTILLA

1. Descargar el repositorio completo.
2. Descomprimirlo en una carpeta.
3. Abrir Visual Studio Code.
4. Seleccionar `File → Open Folder`.
5. Abrir la carpeta `Plantilla-UTN`.
6. Abrir `main.typ`.
7. Activar la vista previa con Tinymist.

Para abrir la vista previa:

1. Presionar `Ctrl + Shift + P`.
2. Buscar `Typst Preview`.
3. Seleccionar el comando correspondiente.

El documento se mostrará y actualizará conforme se modifique el contenido.

## 4. MODIFICAR LOS DATOS ACADÉMICOS

Abrir `datos.typ`.

Desde este archivo se pueden modificar:

- Carrera.
- Materia.
- Profesor.
- Jefe de Trabajos Prácticos (J.T.P.).
- Número del trabajo práctico.
- Título de portada.
- Integrantes.
- Lugar y fecha.

La modificación del nombre de la materia también actualiza el encabezado institucional.

No es necesario modificar el diseño de la portada para cambiar estos datos.

## 5. PORTADA INSTITUCIONAL

El diseño se encuentra en `main.typ`.

Incluye:

- Fondo geométrico institucional.
- Logotipo UTN Villa María.
- Título editable.
- Datos académicos.
- Lugar y fecha.

Las imágenes están almacenadas en `assets/`.

Para modificar la posición de algún elemento se pueden ajustar los parámetros `dx`, `dy`, `rotate` y las dimensiones correspondientes.

Los títulos extensos pueden requerir ajustes de tamaño o distribución para permanecer dentro del recuadro de la portada.

## 6. ENCABEZADO Y NUMERACIÓN

El archivo `encabezado.typ` define el encabezado institucional.

Incluye:

- Logotipo UTN.
- Facultad Regional Villa María.
- Departamento de Electrónica.
- Universidad Tecnológica Nacional.
- Nombre de la materia.

El encabezado aparece en las páginas interiores, pero no en la portada.

La numeración es automática y se presenta con el formato `Pag.1`, `Pag.2`, etc.

La portada no muestra numeración.

## 7. FORMATO DEL INFORME

El archivo `estilos.typ` concentra la configuración académica.

Formato establecido:

- Títulos principales: Times New Roman, 16 pt.
- Subtítulos: Times New Roman, 13 pt.
- Texto: Times New Roman, 11 pt, justificado.
- Figuras: centradas, con descripción y numeración automática.
- Tablas: diseño monocromático, fondo blanco y bordes negros.
- Ecuaciones: centradas, con numeración a la derecha.
- Referencias cruzadas: automáticas.

Para crear un título principal:

`= Introducción`

Para crear un subtítulo:

`== Fundamentos teóricos`

Las imágenes, tablas y ecuaciones deben insertarse mediante la sintaxis correspondiente de Typst.

## 8. ÍNDICE AUTOMÁTICO

El índice se genera mediante `outline()`.

Incluye los títulos y subtítulos definidos en el documento y sus páginas correspondientes.

No es necesario actualizar los números manualmente.

El índice tiene un ancho reducido y está centrado para mejorar su presentación.

## 9. ANEXOS

Los anexos pueden incluir imágenes, circuitos eléctricos, planos, mediciones o documentación complementaria.

Para crear uno:

```typst
#pagebreak()

= Anexo I

#align(center)[
  #image("assets/imagen.png", width: 90%)
]
```

La imagen debe existir en la ruta indicada.

## 10. EXPORTAR A PDF

Desde Visual Studio Code:

1. Abrir `main.typ`.
2. Guardar los cambios.
3. Presionar `Ctrl + Shift + P`.
4. Buscar `Tinymist Export PDF`.
5. Ejecutar el comando de exportación.

También se puede utilizar el compilador oficial de Typst desde la terminal, si está instalado:

```powershell
typst compile main.typ main.pdf
```

El PDF se generará en la carpeta del proyecto.

## 11. RECOMENDACIONES

- Conservar una copia original de la plantilla.
- Crear una copia independiente para cada trabajo práctico.
- Modificar los datos académicos desde `datos.typ`.
- Mantener los recursos gráficos dentro de `assets/`.
- Revisar la vista previa antes de exportar.
- Comprobar las figuras, tablas, ecuaciones y referencias antes de entregar.
- Verificar los requisitos particulares de cada cátedra.

## 12. COMPATIBILIDAD

La plantilla utiliza el lenguaje Typst y puede editarse tanto localmente como en entornos compatibles con Typst.

Se recomienda utilizar versiones actualizadas de VS Code y Tinymist.

Las fuentes Arial y Times New Roman deben estar disponibles en el sistema para conservar la apariencia prevista.

---

Plantilla académica para la UTN Facultad Regional Villa María.

Proyecto orientado a facilitar la elaboración de informes técnicos y académicos mediante Typst.
