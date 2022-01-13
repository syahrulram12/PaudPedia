// import 'package:audioplayers/audioplayers.dart';
// import 'package:equatable/equatable.dart';

// class AudioPlayerModel extends Equatable {
//   final String id;
//   final Audio audio;
//   final bool isPlaying;

//   const AudioPlayerModel(
//       {required this.id, this.audio, required this.isPlaying});

//   @override
//   List<Object> get props => [this.id, this.isPlaying];

//   @override
//   bool get stringify => true;
// }

// abstract class AudioPlayerRepository {
//   Future<AudioPlayerModel> getById(String audioPlayerId);
//   Future<List<AudioPlayerModel>> getAll();
// }

// class InMemoryAudioPlayerRepository implements AudioPlayerRepository {
//   final List<AudioPlayerModel> audioPlayerModels;

//   InMemoryAudioPlayerRepository({required this.audioPlayerModels});

//   @override
//   Future<AudioPlayerModel> getById(String audioPlayerId) async {
//     return Future.value(
//         audioPlayerModels.firstWhere((model) => model.id == audioPlayerId));
//   }

//   @override
//   Future<List<AudioPlayerModel>> getAll() async {
//     return Future.value(audioPlayerModels);
//   }
// }
