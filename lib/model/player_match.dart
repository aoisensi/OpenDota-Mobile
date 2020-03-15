import 'package:json_annotation/json_annotation.dart';

part 'player_match.g.dart';

@JsonSerializable()
class PlayerMatch {
  @JsonKey(name: 'match_id')
  final int matchID;
  @JsonKey(name: 'player_slot')
  final int playerSlot;
  @JsonKey(name: 'radiant_win')
  final bool radiantWin;
  final int duration;
  @JsonKey(name: 'game_mode')
  final int gameMode;
  @JsonKey(name: 'lobby_type')
  final int lobbyType;
  @JsonKey(name: 'hero_id')
  final int heroID;
  @JsonKey(name: 'start_time')
  final int startTime;
  final int version;
  final int kills;
  final int deaths;
  final int assists;
  final int skill;
  @JsonKey(name: 'party_size')
  final int partySize;

  PlayerMatch({
    this.matchID = 0,
    this.playerSlot = 0,
    this.radiantWin = false,
    this.duration = 0,
    this.gameMode = 0,
    this.lobbyType = 0, 
    this.heroID = 0,
    this.startTime = 0,
    this.version = 0,
    this.kills = 0,
    this.deaths = 0,
    this.assists = 0,
    this.skill = 0,
    this.partySize = 0,
  });

  factory PlayerMatch.fromJson(Map<String, dynamic> json) => _$PlayerMatchFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerMatchToJson(this);
}