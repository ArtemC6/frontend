import 'package:frontend/domain/repositories/meeting_repository.dart';

class MeetingUseCase {
  final MeetingRepository _meetingRepository;

  MeetingUseCase({
    required MeetingRepository meetingRepository,
  }) : _meetingRepository = meetingRepository;

  Future<String> checkMeeting() async {
    return await _meetingRepository.checkMeeting();
  }

  Future<String> createMeeting() async {
    return await _meetingRepository.createMeeting();
  }
}
