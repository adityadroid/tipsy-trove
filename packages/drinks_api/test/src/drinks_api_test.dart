import 'package:drinks_api/src/drinks_api.dart';
import 'package:test/test.dart';

class TestDrinksApi extends DrinksApi {
  TestDrinksApi() : super();

  @override
  dynamic noSuchMethod(Invocation invocation) {
    return super.noSuchMethod(invocation);
  }
}

void main() {
  group('DrinksApi', () {
    test('can be constructed', () {
      expect(TestDrinksApi.new, returnsNormally);
    });
  });
}
