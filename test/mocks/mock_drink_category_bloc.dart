import 'package:bloc_test/bloc_test.dart';
import 'package:tipsy_trove/drink_category/bloc/drink_category_bloc.dart';

class MockDrinkCategoryBloc
    extends MockBloc<DrinkCategoryEvent, DrinkCategoryState>
    implements DrinkCategoryBloc {}
