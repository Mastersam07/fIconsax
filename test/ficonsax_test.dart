import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IconData metadata', () {
    test('bold icons are bound to the IconsaxBold font in this package', () {
      expect(IconsaxBold.add.fontFamily, 'IconsaxBold');
      expect(IconsaxBold.add.fontPackage, 'ficonsax');
    });

    test('bulk icons are bound to the IconsaxBulk font in this package', () {
      expect(IconsaxBulk.add.fontFamily, 'IconsaxBulk');
      expect(IconsaxBulk.add.fontPackage, 'ficonsax');
    });

    test('outline icons are bound to the IconsaxOutline font in this package',
        () {
      expect(IconsaxOutline.add.fontFamily, 'IconsaxOutline');
      expect(IconsaxOutline.add.fontPackage, 'ficonsax');
    });
  });

  testWidgets('icons render without throwing', (tester) async {
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: Icon(IconsaxBold.notification),
      ),
    );
    expect(find.byType(Icon), findsOneWidget);
  });
}
