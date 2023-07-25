import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "cleans": MessageLookupByLibrary.simpleMessage("Cleans"),
        "level": MessageLookupByLibrary.simpleMessage("Level"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "pause_resume": MessageLookupByLibrary.simpleMessage("PAUSE/RESUME"),
        "points": MessageLookupByLibrary.simpleMessage("Points"),
        "reset": MessageLookupByLibrary.simpleMessage("RESET"),
        "reward": MessageLookupByLibrary.simpleMessage("Reward"),
        "sounds": MessageLookupByLibrary.simpleMessage("SOUNDS")
      };
}
