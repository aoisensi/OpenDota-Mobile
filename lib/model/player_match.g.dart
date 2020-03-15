// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerMatch _$PlayerMatchFromJson(Map<String, dynamic> json) {
  return PlayerMatch(
    matchID: json['match_id'] as int,
    playerSlot: json['player_slot'] as int,
    radiantWin: json['radiant_win'] as bool,
    duration: json['duration'] as int,
    gameMode: json['game_mode'] as int,
    lobbyType: json['lobby_type'] as int,
    heroID: json['hero_id'] as int,
    startTime: json['start_time'] as int,
    version: json['version'] as int,
    kills: json['kills'] as int,
    deaths: json['deaths'] as int,
    assists: json['assists'] as int,
    skill: json['skill'] as int,
    partySize: json['party_size'] as int,
  );
}

Map<String, dynamic> _$PlayerMatchToJson(PlayerMatch instance) =>
    <String, dynamic>{
      'match_id': instance.matchID,
      'player_slot': instance.playerSlot,
      'radiant_win': instance.radiantWin,
      'duration': instance.duration,
      'game_mode': instance.gameMode,
      'lobby_type': instance.lobbyType,
      'hero_id': instance.heroID,
      'start_time': instance.startTime,
      'version': instance.version,
      'kills': instance.kills,
      'deaths': instance.deaths,
      'assists': instance.assists,
      'skill': instance.skill,
      'party_size': instance.partySize,
    };
