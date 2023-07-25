import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ja_JP';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "cleans": MessageLookupByLibrary.simpleMessage("クリア"),
        "level": MessageLookupByLibrary.simpleMessage("レベル"),
        "next": MessageLookupByLibrary.simpleMessage("次へ"),
        "pause_resume": MessageLookupByLibrary.simpleMessage("一時停止/再開"),
        "points": MessageLookupByLibrary.simpleMessage("ポイント"),
        "reset": MessageLookupByLibrary.simpleMessage("リセット"),
        "reward": MessageLookupByLibrary.simpleMessage("報酬"),
        "sounds": MessageLookupByLibrary.simpleMessage("音声")
      };
}
