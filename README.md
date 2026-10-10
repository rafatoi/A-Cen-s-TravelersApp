# A-Cen's Travelers App

Aplicación móvil desarrollada con **Flutter y Dart** como parte de una práctica de maquetación de interfaces a partir de un diseño en Figma. El proyecto busca recrear las pantallas de una aplicación de viajes, poniendo en práctica la construcción de interfaces, la reutilización de widgets y la presentación dinámica de información. 

Este proyecto tiene un propósito formativo: practicar cómo interpretar un diseño visual, convertirlo en una interfaz Flutter y organizar el código para que sea claro, mantenible y reutilizable.


## Objetivo del proyecto

Recrear las **tres pantallas** definidas en el diseño de Figma, con una fidelidad visual objetivo del **90 % o superior**, e implementar la navegación principal entre ellas.

La aplicación utiliza datos simulados en el proyecto; **no requiere conexión a una API, base de datos ni servicio externo** para esta actividad.

## Diseño de referencia

- **Archivo de Figma:** [Semana 6 - Figma](https://www.figma.com/design/smYIoA70p1sdKTz4JHfP82/Semana-6?node-id=12-2024&t=ZUBoOGdZOhXf2CvM-1)

## Características y alcance

- Recreación de las tres pantallas especificadas en Figma.
- Navegación funcional entre pantallas.
- Pantalla de detalles cuyo contenido cambia según el elemento seleccionado.
- Representación de la información mediante clases y objetos de Dart.
- Datos simulados organizados en listas.
- Widgets y componentes reutilizables para reducir la duplicación de código.
- Integración de imágenes y otros recursos del diseño.
- Renderizado dinámico de listas y cuadrículas.

Durante la implementación se practican, entre otros, los siguientes widgets y conceptos:

- `ListView.builder` para listas verticales.
- `GridView.builder` para contenido en cuadrícula.
- `Row` y `Column` para organizar elementos.
- `Card` y botones para representar elementos interactivos.
- Clases, constructores y objetos de Dart.
- Navegación entre pantallas.
- Componentes reutilizables y datos dinámicos.

## Estructura del proyecto

El proyecto sigue la estructura base de una aplicación Flutter. Dentro de `lib/` se organizan carpetas para separar responsabilidades:

```text
lib/
├── config/
├── data/
├── models/
├── screens/
├── widgets/
└── main.dart

assets/
├── images/
└── svg/
```

## Requisitos

Antes de ejecutar el proyecto, asegúrate de tener instalado:

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Dart SDK](https://dart.dev/get-dart) (incluido con Flutter)
- Un editor compatible, como [Visual Studio Code](https://code.visualstudio.com/), con las extensiones de Flutter y Dart.
- Un emulador o dispositivo móvil para ejecutar la aplicación.
