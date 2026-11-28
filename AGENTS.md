# AGENTS.md — Sistema de Informes UTN FRVM

## 1. Objetivo del proyecto

Este repositorio contiene un sistema modular de documentación académica desarrollado en **Typst** para Ingeniería Electrónica de la Universidad Tecnológica Nacional, Facultad Regional Villa María (UTN FRVM).

Su finalidad es elaborar informes, trabajos prácticos, proyectos integradores y documentación técnica mediante una plantilla institucional reutilizable.

**Repositorio de referencia:**

https://github.com/julama555/Plantilla-UTN

El objetivo fundamental es evitar la duplicación de código, mantener la coherencia visual y reducir el trabajo repetitivo.

## 2. Principios de funcionamiento

El sistema separa tres responsabilidades:

1. **Plantilla institucional:** diseño de portada, encabezados, tipografía, tablas, figuras, ecuaciones y numeración.
2. **Materia:** información académica compartida entre los trabajos de una misma asignatura.
3. **Trabajo práctico:** título, tema, desarrollo, resultados, ecuaciones e imágenes particulares.

El archivo `main.typ` actúa como punto de integración de estos componentes.

No debe utilizarse como archivo principal de redacción académica.

## 3. Arquitectura del proyecto

La estructura modular prevista es:

```text
Plantilla-UTN/
├── main.typ
├── plantilla/
│   ├── documento.typ
│   ├── portada.typ
│   ├── encabezado.typ
│   ├── estilos.typ
│   └── assets/
│
└── materias/
    ├── aplicadas2/
    │   ├── datos.typ
    │   ├── tp1/
    │   │   ├── contenido.typ
    │   │   └── imagenes/
    │   └── tp2/
    │       ├── contenido.typ
    │       └── imagenes/
    │
    └── medidas/
        ├── datos.typ
        └── tp1/
            ├── contenido.typ
            └── imagenes/
```

Esta estructura representa la arquitectura objetivo. Antes de modificar el proyecto, se debe inspeccionar su estructura real y verificar los archivos existentes.

## 4. Responsabilidad de los archivos

### main.typ

Integra la plantilla institucional, los datos de la materia y el trabajo seleccionado.

No debe contener el desarrollo del informe ni duplicar configuraciones visuales.

### plantilla/documento.typ

Organiza la composición del documento: portada, configuración de páginas interiores, índice y contenido.

### plantilla/portada.typ

Contiene el diseño institucional de la portada.

Su composición gráfica debe conservarse, salvo que el usuario solicite modificaciones.

### plantilla/encabezado.typ

Define el encabezado de las páginas interiores, incluyendo logotipo, universidad, departamento y materia.

### plantilla/estilos.typ

Centraliza el formato académico del documento.

### materias/\<materia\>/datos.typ

Contiene los datos compartidos de la materia:

- Carrera.
- Nombre de la materia.
- Profesor.
- Jefe de Trabajos Prácticos.
- Integrantes habituales.
- Otros datos académicos permanentes.

### materias/\<materia\>/\<tp\>/contenido.typ

Contiene los datos y el desarrollo específicos del trabajo:

- Título.
- Tema.
- Introducción.
- Fundamentos teóricos.
- Resultados.
- Conclusiones.
- Anexos, cuando corresponda.

### imagenes/

Cada trabajo práctico conserva sus imágenes dentro de su propia carpeta.

No se deben mezclar imágenes de distintos trabajos.

## 5. Normas de formato académico

Respetar los estilos existentes y las exigencias particulares de cada cátedra.

| Elemento | Formato |
|---|---|
| Títulos principales | Times New Roman, 16 pt, negrita |
| Subtítulos | Times New Roman, 13 pt, negrita |
| Texto general | Times New Roman, 11 pt, justificado |
| Figuras | Centradas, numeración automática |
| Descripción de figuras | Times New Roman, 11 pt, número en negrita |
| Tablas | Blancas, bordes negros, numeración automática |
| Ecuaciones | Centradas, numeración a la derecha |
| Índice | Automático, centrado y de ancho reducido |
| Portada | Sin numeración visible |
| Páginas interiores | Numeración automática desde Pag.1 |

Las referencias a figuras, tablas y ecuaciones deben mantenerse mediante referencias cruzadas de Typst.

## 6. Instrucciones para las IA

Antes de trabajar sobre cualquier informe:

1. Consultar este archivo y el README del repositorio.
2. Inspeccionar la estructura real del proyecto.
3. Identificar la materia y el trabajo práctico correspondiente.
4. Reutilizar los componentes existentes.
5. Evitar la duplicación de datos y configuraciones.
6. Modificar únicamente los archivos necesarios.
7. Conservar los recursos gráficos originales.
8. No alterar otros trabajos prácticos.
9. No reconstruir la plantilla sin autorización.
10. No inventar información académica, mediciones, resultados ni referencias bibliográficas.

**No se debe suponer que el código del repositorio está actualizado solo porque se dispone de este documento.**

Si una tarea depende de detalles de implementación, consultar los archivos fuente actuales.

## 7. Creación de nuevos trabajos

Cuando se solicite crear un trabajo práctico:

1. Verificar si existe la carpeta de la materia.
2. Reutilizar los datos académicos correspondientes.
3. Crear una carpeta independiente para el nuevo TP.
4. Incorporar su contenido y recursos gráficos.
5. Integrar el trabajo mediante el mecanismo existente en `main.typ`.
6. Verificar las rutas y referencias.
7. Comprobar el documento mediante Tinymist o el compilador de Typst, cuando estén disponibles.

No crear nuevas plantillas institucionales por cada trabajo.

## 8. Validación técnica

Antes de considerar terminado un cambio:

- Comprobar sintaxis Typst.
- Verificar importaciones y rutas.
- Comprobar que no existan errores de compilación.
- Revisar portada, encabezados y numeración.
- Verificar índice y referencias cruzadas.
- Revisar figuras, tablas y ecuaciones.
- Confirmar que los cambios no afecten otros trabajos.

Si no es posible compilar o inspeccionar visualmente el resultado, informarlo explícitamente.

## 9. Herramientas

El entorno principal es:

- Visual Studio Code.
- Tinymist Typst.
- Compilador Typst, cuando esté disponible.
- Git y GitHub para control de versiones.

No agregar generadores externos de PDF, interfaces gráficas, scripts o dependencias adicionales salvo que exista una necesidad concreta y autorizada.

## 10. Reglas para ChatGPT y otras IA

Cuando se utilice este archivo desde otro proyecto o conversación:

- Considerar este repositorio como referencia del sistema de informes.
- No asumir acceso automático a los archivos locales.
- Consultar el código actualizado cuando sea necesario.
- Priorizar el contenido técnico de la materia solicitada.
- Mantener el formato establecido por la plantilla.
- Distinguir información obtenida de archivos, conocimientos generales y suposiciones.
- No alterar la estructura modular sin justificación.
- Respetar las instrucciones específicas del usuario y de la cátedra.

Cuando el repositorio no esté disponible, trabajar únicamente con los archivos proporcionados y explicar las limitaciones.

## 11. Principio fundamental

**Máxima reutilización con la mínima complejidad necesaria.**

La plantilla debe facilitar la producción de informes, no convertirse en una dificultad adicional.

Priorizar siempre:

- Simplicidad.
- Mantenibilidad.
- Rigor académico.
- Fidelidad visual.
- Independencia entre trabajos.
- Reutilización del código existente.

El sistema debe permitir trabajar sobre diferentes materias sin reconstruir la documentación institucional en cada proyecto.