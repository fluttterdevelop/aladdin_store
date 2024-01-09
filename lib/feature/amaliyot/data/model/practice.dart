// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'practice.freezed.dart';
part 'practice.g.dart';

@Freezed()
class News with _$News {
  const factory News({
    @Default(0) final int? count,
    @Default('') final String? title,
  }) = _News;



factory News.fromJson(Map<String, dynamic> data) =>
      _$NewsFromJson(data);

  // @override
  // Map<String, dynamic> toJson() => _$$NewsImplToJson(this);


}
