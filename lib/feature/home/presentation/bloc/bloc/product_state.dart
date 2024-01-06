
part of 'product_bloc.dart';

// @freezed
// class ProductState with _$ProductState {
//   const factory ProductState.initial() = _Initial;
// }



enum LoadingStatus {
  pure,
  loading,
  loadedWithSuccess,
  loadedWithFailure,
}

class ProductState {
  final LoadingStatus status;
  final List<ProductEntity> news;

  ProductState({
    required this.status,
    required this.news,
  });

  ProductState.empty() : this(status: LoadingStatus.pure, news: []);


  ProductState copyWith({
    LoadingStatus? status,
    List<ProductEntity>? news,
  }) {
    return ProductState(
      status: status ?? this.status,
      news: news ?? this.news,
    );
  }

  @override
  bool operator ==(covariant ProductState other) {
    if (identical(this, other)) return true;
  
    return 
      other.status == status &&
      listEquals(other.news, news);
  }

  @override
  int get hashCode => status.hashCode ^ news.hashCode;

  @override
  String toString() => 'ProductState(status: $status, news: $news)';
}
