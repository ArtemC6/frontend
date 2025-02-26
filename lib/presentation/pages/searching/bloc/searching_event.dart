part of 'searching_bloc.dart';

@freezed
class SearchingEvent with _$SearchingEvent {
  const factory SearchingEvent.started() = _Started;
  const factory SearchingEvent.checkSimilarities() = _CheckSimilarities;
}
