import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

void main(List<String> arguments) async{
  final botToken = '7971765646:AAHTr_6QnG9Cfm9q8IL2gzTAiqC7WELeS1E';
  final username = (await Telegram(botToken).getMe()).username;
  final bot = TeleDart(botToken, Event(username!));
  bot.start();
  print('start-bot');


  bot.onCommand().listen((command) {
    if(command.text!.toLowerCase() == '/start'){
      command.reply("Assalomu alaykum!");
    }
  },);

  bot.onMessage().listen((userMessage) {
    userMessage.reply("salom salom ${userMessage.from!.firstName}");
  },);




}
