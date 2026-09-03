import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:verificacion_entorno/main.dart';

void main() {
  testWidgets('El AppBar muestra el nombre del estudiante', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.widgetWithText(AppBar, 'Ali'), findsOneWidget);
  });

  testWidgets('El boton de mas incrementa el contador de dos en dos', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('2'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('4'), findsOneWidget);
  });

  testWidgets('El boton de reiniciar regresa el contador a cero', (tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byIcon(Icons.add));
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('4'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.restart_alt));
    await tester.pump();
    expect(find.text('0'), findsOneWidget);
  });
}
