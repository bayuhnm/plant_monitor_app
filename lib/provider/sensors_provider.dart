import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:plant_monitor_app/provider/data_model.dart';

class SensorProvider {
  StreamController<Sensor> _sensorStreamController = StreamController<Sensor>();
  Stream<Sensor> get sensorStream => _sensorStreamController.stream;

  Future<void> startSensorUpdates() async {
    while (true) {
      try {
        final response = await http.get(Uri.parse('https://nutritor.himitpens.com'));
        if (response.statusCode == 200) {
          final jsonData = json.decode(response.body);
          final sensorData = Sensor.fromJson(jsonData);
          _sensorStreamController.add(sensorData);
        }
      } catch (e) {
        print('Error retrieving sensor data: $e');
      }
      await Future.delayed(Duration(seconds: 1));
    }
  }

  void dispose() { 
    _sensorStreamController.close();
  }
}
