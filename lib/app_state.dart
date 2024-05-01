import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _currentURL = 'https://audiomack.com/smartprince399/song/fatiha';
  String get currentURL => _currentURL;
  set currentURL(String value) {
    _currentURL = value;
  }

  List<String> _musicUrls = [
    'https://audiomack.com/smartprince399/song/fatiha',
    'https://audiomack.com/smartprince399/song/fatiha'
  ];
  List<String> get musicUrls => _musicUrls;
  set musicUrls(List<String> value) {
    _musicUrls = value;
  }

  void addToMusicUrls(String value) {
    _musicUrls.add(value);
  }

  void removeFromMusicUrls(String value) {
    _musicUrls.remove(value);
  }

  void removeAtIndexFromMusicUrls(int index) {
    _musicUrls.removeAt(index);
  }

  void updateMusicUrlsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _musicUrls[index] = updateFn(_musicUrls[index]);
  }

  void insertAtIndexInMusicUrls(int index, String value) {
    _musicUrls.insert(index, value);
  }

  String _tempProfilPic = '';
  String get tempProfilPic => _tempProfilPic;
  set tempProfilPic(String value) {
    _tempProfilPic = value;
  }
}
