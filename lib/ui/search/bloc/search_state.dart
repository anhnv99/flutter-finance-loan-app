import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:base/base.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState extends BaseBlocState with _$SearchState {
  const factory SearchState({
    @Default('') String id,
  }) = _SearchState;
}
