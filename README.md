# Verificacion de Entorno

Proyecto de la Clase 4 (Unidad 1, Semana 2) del curso Desarrollo de Aplicaciones Moviles (Flutter y Dart), ESEN, Ciclo 3/2026. Docente: Jaime Mejia.

## Que hace la app

Es la app de contador por defecto de Flutter, con tres cambios:

1. El titulo de la barra superior (AppBar) muestra el nombre del estudiante.
2. El boton principal incrementa el contador de dos en dos.
3. Hay un segundo boton que reinicia el contador a cero.

## Como ejecutar

```
flutter pub get
flutter run
```

Dispositivo usado: Chrome (`flutter run -d chrome`). Al correr `flutter devices` aparecian macOS (desktop) y Chrome. No habia un telefono conectado ni un emulador de Android listo.

## Experimento: r frente a R (hot reload vs hot restart)

Pasos realizados:

1. Se presiono el boton de incrementar hasta que el contador quedo en 6.
2. Se cambio el titulo en `main.dart` de `'Ali'` a `'Ali *'`, se guardo y se presiono `r` (hot reload) en la terminal donde corria `flutter run`.
3. Resultado del contador tras `r`: se mantuvo en 6. El titulo del AppBar si cambio a "Ali *". En la terminal aparecio: `Reloaded application in 806ms.`
4. Se cambio el titulo otra vez, de `'Ali *'` a `'Ali **'`, se guardo y se presiono `R` mayuscula (hot restart).
5. Resultado del contador tras `R`: volvio a 0. El titulo del AppBar cambio a "Ali **". En la terminal aparecio: `Restarted application in 928ms.`

Conclusion sobre donde vive el estado: el valor de `_counter` vive dentro del objeto `_MyHomePageState`. El hot reload vuelve a ejecutar `build` con el codigo nuevo pero conserva ese State, por eso el contador no se reinicia. El hot restart arranca la app otra vez desde `main()`, asi que el State se crea de cero y `_counter` regresa a 0.

## Bitacora del error

No se presentaron errores durante el proceso de creacion del proyecto y ejecucion.
