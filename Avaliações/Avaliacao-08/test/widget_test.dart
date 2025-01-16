import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:navigation_flutter/main.dart';

void main() {
  testWidgets('Drawer navigation test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verificar o texto inicial da tela principal.
    expect(find.text('Select an option from the Drawer'), findsOneWidget);

    // Abrir o Drawer.
    await tester.tap(find.byIcon(Icons.menu));
    await tester.pump(); // Aguarda o Drawer abrir.

    // Verificar se o Drawer contém os itens esperados.
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('About'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);

    // Navegar para a tela "About".
    await tester.tap(find.text('About'));
    await tester.pumpAndSettle(); // Aguarda a navegação completa.

    // Verificar se estamos na tela "About".
    expect(find.text('About Screen'), findsOneWidget);
  });
}
