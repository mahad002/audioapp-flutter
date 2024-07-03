import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerScreen extends StatefulWidget {
  @override
  _AudioPlayerScreenState createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  AudioPlayer audioPlayer = AudioPlayer();
  String audioUrl = 'YOUR_AUDIO_FILE_URL';

  @override
  void initState() {
    super.initState();
    // You can handle audio player state changes here if needed.
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  void playAudio() {
    audioPlayer.play(audioUrl as Source);
  }

  void pauseAudio() {
    audioPlayer.pause();
  }

  void stopAudio() {
    audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Player Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: playAudio,
              child: Text('Play Audio'),
            ),
            ElevatedButton(
              onPressed: pauseAudio,
              child: Text('Pause Audio'),
            ),
            ElevatedButton(
              onPressed: stopAudio,
              child: Text('Stop Audio'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AudioPlayerScreen(),
  ));
}
