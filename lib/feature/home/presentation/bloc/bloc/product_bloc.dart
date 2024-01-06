
import 'package:aladdin_store/core/usecase/usecase.dart';
import 'package:aladdin_store/feature/home/data/data_source/remote_data_source.dart';
import 'package:aladdin_store/feature/home/domain/entity/product.dart';
import 'package:aladdin_store/feature/home/domain/usecase/get_product.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repository/product.dart';

part 'product_event.dart';
part 'product_state.dart';

// class ProductBloc extends Bloc<ProductEvent, ProductState> {
//   ProductBloc() : super(_Initial());

//   @override
//   Stream<ProductState> mapEventToState(
//     ProductEvent event,
//   ) async* {
//     // TODO: implement mapEventToState
//   }
// }

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductState.empty()) {
    on<NewsStarted>((event, emit) async {
      emit(state.copyWith(status: LoadingStatus.loading));

      final usecase =
          await GetProductUseCase(ProductRepositoryImpl(HomeRemoteDataSource())).call(NoParams());

      usecase.either(
        (failure) {
          emit(state.copyWith(status: LoadingStatus.loadedWithFailure));
        },
        (news) {
          emit(state.copyWith(
            status: LoadingStatus.loadedWithSuccess,
            news: news,
          ));
        },
      );
    });
  }
}
