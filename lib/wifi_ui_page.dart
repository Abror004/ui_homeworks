import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wifi_iot/wifi_iot.dart';

class WifiUIPage extends StatefulWidget {
  const WifiUIPage({Key? key}) : super(key: key);
  static const String id = "WifiUIPage";

  @override
  _WifiUIPageState createState() => _WifiUIPageState();
}

class _WifiUIPageState extends State<WifiUIPage> {
  List<WifiNetwork> _listWifi = [];
  bool _isEnabled = false;
  bool _isConnected = false;
  String ssid = "";

  @override
  void initState() {
    super.initState();
    getWifi();
  }

  Future<void> getWifi() async {
    setState(() async {
      _isEnabled = await WiFiForIoTPlugin.isEnabled();
      _isConnected = await WiFiForIoTPlugin.isConnected();
      _listWifi = await loadWifi();
    });
    if (_isConnected) {
      await WiFiForIoTPlugin.getSSID().then((value) {
        setState(() {
          ssid = value ?? "";
        });
      });
    }
  }

  Future<List<WifiNetwork>> loadWifi() async {
    List<WifiNetwork> list;
    try {
      list = await WiFiForIoTPlugin.loadWifiList();
    } on PlatformException {
      list = <WifiNetwork>[];
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {

    WiFiForIoTPlugin.isEnabled().then((value) {
      setState(() {
        _isEnabled = value;
      });
    });

    WiFiForIoTPlugin.isConnected().then((value) {
      setState(() {
        _isConnected = value;
      });
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Wifi Page"),
        centerTitle: true,
        backgroundColor: _isEnabled ? Colors.blueAccent : Colors.blueGrey,
        actions: [
          CupertinoSwitch(
            value: _isEnabled,
            onChanged: (value) {
              if (_isEnabled) {
                WiFiForIoTPlugin.setEnabled(false);
              } else {
                WiFiForIoTPlugin.setEnabled(true);
                getWifi();
              }

              // setState(() {
              //   _isEnabled = !_isEnabled;
              // });
            },
          ),
        ],
      ),
      body: _isEnabled
          ? ListView.builder(
              itemCount: _listWifi.length,
              itemBuilder: (context, index) {
                return itemOfList(index);
              },
            )
          : Center(
              child: Text("No connecting WiFi your mobile!!!"),
            ),
    );
  }

  Widget itemOfList(int index) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      elevation: 10,
      child: ListTile(
        title: Text(_listWifi[index].ssid ?? "No Data"),
        leading: Icon(Icons.wifi),
      ),
    );
  }
}
