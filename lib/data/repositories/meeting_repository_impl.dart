import 'package:frontend/data/datasources/remote/meeting_datasource.dart';
import 'package:frontend/domain/repositories/meeting_repository.dart';

class MeetingRepositoryImpl implements MeetingRepository {
  final MeetingDatasource _meetingDatasource;

  MeetingRepositoryImpl({
    required MeetingDatasource meetingDatasource,
  }) : _meetingDatasource = meetingDatasource;

  @override
  Future<String> checkMeeting() async {
    return await _meetingDatasource.checkMeeting();
  }

  @override
  Future<String> createMeeting() async {
    return await _meetingDatasource.createMeeting();
  }
}
