# Blueprint de la Aplicación Hotel Luxury Moonsea

## Descripción General

Esta es una aplicación de Flutter para un hotel de lujo llamado "Luxury Moonsea". La aplicación permite a los usuarios explorar las habitaciones, registrarse e iniciar sesión. Presenta un diseño moderno y elegante, con una paleta de colores sofisticada y una navegación intuitiva entre pantallas.

## Estructura del Proyecto

El proyecto sigue una estructura organizada para facilitar la mantenibilidad y escalabilidad:

- **`lib/main.dart`**: Es el punto de entrada principal de la aplicación. Aquí se definen las rutas de navegación y el tema global de la aplicación.

- **`lib/mispantallas/`**: Este directorio contiene todas las pantallas (widgets de página completa) de la aplicación:
    - **`pantalla1.dart`**: Es la pantalla de bloqueo inicial, que invita al usuario a deslizar hacia arriba para continuar.
    - **`pantalla2.dart`**: Es la pantalla de bienvenida (splash screen) que muestra el logo y el nombre del hotel.
    - **`pantalla3.dart`**: Es el menú principal, que ofrece opciones para registrarse, iniciar sesión o acceder como administrador.
    - **`pantalla4.dart`**: Es la pantalla de registro, donde el usuario puede introducir sus datos y seleccionar una foto de perfil desde la galería.
    - **`pantalla5.dart`**: Es la pantalla de bienvenida personalizada, que muestra la foto de perfil del usuario y un mensaje de saludo.
    - **`pantalla6.dart`**: Es la pantalla que muestra un catálogo de las habitaciones disponibles en el hotel, con imágenes y descripciones.

- **`lib/mispantallas/logo.dart`**: Contiene un widget reutilizable para el logo del hotel, que se usa en varias pantallas para mantener la consistencia de la marca.

## Diseño y Estilo (Theming)

La aplicación utiliza un tema coherente y una paleta de colores bien definida para crear una experiencia de usuario premium.

- **Paleta de Colores:**
    - `colorCafe`: `Color(0xFF674A36)` (Marrón oscuro, usado para fondos y texto principal).
    - `colorBeige`: `Color(0xFFE5D5C2)` (Beige claro, usado para texto y elementos de contraste).
    - `colorGuinda`: `Color(0xFF8C3E3E)` (Guinda/Rojo oscuro, usado para botones y elementos de acción importantes).

- **Tema de la Aplicación:**
    - El `AppBar` está configurado globalmente con un fondo `colorCafe`, texto `colorBeige` y un estilo de título en negrita para una apariencia consistente en toda la aplicación.

## Funcionalidades Clave

- **Navegación fluida**: La aplicación utiliza rutas nombradas (`Navigator.pushNamed`) para moverse entre las diferentes pantallas de una manera lógica y predecible.
- **Selección de imágenes**: La pantalla de registro implementa el paquete `image_picker` para permitir a los usuarios seleccionar una foto de su galería y mostrarla como imagen de perfil.
- **Paso de datos entre pantallas**: La ruta de la imagen seleccionada se pasa como argumento a la pantalla de bienvenida para que pueda ser mostrada.
- **Visualización de imágenes de red**: La pantalla de habitaciones carga imágenes desde URLs para mostrar el catálogo, lo que permite actualizar las fotos sin necesidad de reinstalar la aplicación.

## Plan Actual

- **Tarea Inicial**: Corregir todas las advertencias y problemas de análisis estático en el proyecto.
- **Estado**: **Completado**. Se han eliminado todas las importaciones no utilizadas y `flutter analyze` no reporta ningún problema.
- **Siguientes Pasos**: A la espera de nuevas instrucciones para añadir más funcionalidades, mejorar el diseño o realizar cualquier otra modificación en la aplicación.
