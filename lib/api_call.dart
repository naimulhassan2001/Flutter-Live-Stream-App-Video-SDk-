import 'dart:convert';
import 'package:http/http.dart' as http;

//Auth token we will use to generate a meeting and connect to it
String token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcGlrZXkiOiIxODFmMDE5Yi0zYTA3LTRjNTgtOGFjMC1kNjE0MWU3ZTc3OTkiLCJwZXJtaXNzaW9ucyI6WyJhbGxvd19qb2luIl0sImlhdCI6MTcwNzM2ODgyMCwiZXhwIjoxNzA3OTczNjIwfQ.AL_KCYkMsKI80GW9iA8mI1aKoUHJHSx4w_ewX3Lp6o0";

// API call to create meeting
Future<String> createMeeting() async {
  final http.Response httpResponse = await http.post(
    Uri.parse("https://api.videosdk.live/v2/rooms"),
    headers: {'Authorization': token},
  );

  print("=====================> rood ID ${json.decode(httpResponse.body)['roomId']}") ;
//Destructuring the roomId from the response
  return json.decode(httpResponse.body)['roomId'];
}