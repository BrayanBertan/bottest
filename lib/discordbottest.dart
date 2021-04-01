import "package:nyxx/nyxx.dart";

// Main function
void main() {
  // Create new bot instance
  final bot = Nyxx(
      "ODI3MjE4NTg4MDI4ODk1Mjcy.YGX1WA.30FWsxzPqu7ZKlzDk-dyAf6mLl4",
      GatewayIntents.none);

  // Listen to ready event. Invoked when bot is connected to all shards. Note that cache can be empty or not incomplete.
  bot.onReady.listen((e) {
    print("Ready!");
  });

  // Listen to all incoming messages
  bot.onMessageReceived.listen((e) {
    // Check if message content equals "!ping"
    if (e.message.content == "!ping") {
      // Send "Pong!" to channel where message was received
      e.message.channel.getFromCache()?.sendMessage(content: "Pong!");
    }
  });
}
