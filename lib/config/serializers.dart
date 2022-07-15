import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:shwelar/models/data/auth.dart';
import 'package:shwelar/models/data/game.dart';
import 'package:shwelar/models/data/key.dart';
import 'package:shwelar/models/data/meta.dart';
import 'package:shwelar/models/data/score.dart';
import 'package:shwelar/models/response/game_list_response.dart';
import 'package:shwelar/models/response/player_read_response.dart';

part 'serializers.g.dart';

@SerializersFor([
//
  Game,
  Meta,
  Auth,
  Key,
  Score,

  GameListResponse,
  PlayerReadResponse
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
