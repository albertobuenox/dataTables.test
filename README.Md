![Logo de la librería de Js DataTables](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTDTPv_M5wltDDv7qTzOU5n0d7lr_MwYkO0A&s)
<img src="https://lasalledonostia.com/wp-content/uploads/2022/07/La_Salle_Donostia@2x.png" alt="Logo de La Salle Donostia" width="300"/>

# **Prueba de Estructura con Templates y PHP**

Este proyecto es una prueba práctica para replicar la estructura y metodología de trabajo utilizada en mi actual empresa. La implementación está basada en **templates HTML** y **PHP plano**, sin el uso de frameworks, para cargar la lógica de base de datos y empaquetar las plantillas HTML de manera eficiente.

Se emplea **DataTables** en conjunto con **Ajax** para gestionar la carga de datos de forma paginada, con filtros y búsquedas dinámicas, asegurando un rendimiento óptimo sin sobrecargar el cliente.

---

## **Estructura del Proyecto**

La estructura modular y organizada del proyecto es la siguiente:

```plaintext
.
├── css/
│   ├── responsive.css    # Estilos para diseño responsivo.
│   └── style.css         # Estilos generales del sitio.
├── home/
│   ├── ajax copy.php     # Copia auxiliar para pruebas de endpoints Ajax.
│   ├── ajax.php          # Endpoint principal para manejar peticiones de DataTables.
│   └── index.php         # Punto de entrada principal para ensamblar las plantillas.
├── img/
│   ├── estrella.ico      # Favicon del proyecto.
│   └── logo              # Imagen del logo (sin extensión especificada).
├── templates/
│   ├── cabecera.html     # Plantilla para la cabecera.
│   ├── cuerpo.html       # Plantilla para el cuerpo principal.
│   └── pie.html          # Plantilla para el pie de página.
```

# Descripción de la Estructura
- **templates/:** Contiene las plantillas HTML reutilizables:

- **cabecera.html:** Encabezado de la página (incluye estilos y scripts globales).
- **cuerpo.html:** Área de contenido dinámico gestionado por PHP.
- **pie.html:** Pie de página con información o scripts adicionales.
- **home/:** Archivos PHP para la lógica principal:

- **ajax.php:** Controlador para responder a las solicitudes Ajax de DataTables.
- **index.php:** Página principal que empaqueta las plantillas HTML.
- **css/:** Archivos CSS centralizados:

- **responsive.css:** Define estilos responsivos para diferentes dispositivos.
- **style.css:** Contiene estilos generales para la interfaz.
- **img/:** Contiene los recursos gráficos utilizados en el proyecto.

# Tecnologías Utilizadas
### PHP:
Se utiliza para procesar la lógica del servidor y ensamblar dinámicamente las plantillas HTML.
### Ajax: 
Permite cargar y actualizar los datos en la tabla sin recargar la página, mejorando la experiencia del usuario.
### DataTables: 
Librería para manejar tablas con:
- Paginación dinámica.
- Filtros y búsquedas avanzadas.
- Renderizado optimizado para grandes volúmenes de datos.
### HTML & CSS: 
Para la estructura y estilos de la interfaz.

## **Funcionalidades Clave**

### **DataTables con Ajax**
- Los datos de la tabla se cargan de manera asíncrona desde el servidor usando `ajax.php`.
- Implementa búsquedas, filtros y paginación dinámica para optimizar el rendimiento en clientes con recursos limitados.

### **Estructura Modular**
- La separación entre lógica (PHP) y presentación (HTML/CSS) mejora la mantenibilidad y escalabilidad del proyecto.

### **Optimización del Cliente**
- Al usar Ajax para cargar los datos de manera progresiva, el cliente no necesita procesar grandes volúmenes de información de una sola vez, reduciendo la carga de la página.


