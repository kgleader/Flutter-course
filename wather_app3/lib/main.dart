import 'package:flutter/material.dart';
import 'package:wather_app3/model/weather_model.dart';
import 'package:wather_app3/services/weather_api_client.dart';
import 'package:wather_app3/views/additional_information.dart';
import 'package:wather_app3/views/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // функцияны init кылыш учун биз API ни чакырабыз
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

  Future<void> getData() async {
    // бул жерде тырмакчанын ичиндеги шаарды озгортуп корсок болот
    data = await client.getCurrentWeather("Georgia");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFf9f9f9),
        appBar: AppBar(
          backgroundColor: const Color(0xFFf9f9f9),
          elevation: 0.0,
          title: const Text(
            'Weater App',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
        ),
        body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {}
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  currentWeather(Icons.wb_sunny_rounded, "${data!.temp}°",
                      "${data!.cityName}"),
                  const SizedBox(
                    height: 60.0,
                  ),
                  const Text(
                    "Additional information",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Color(0xdd212121),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // азыр кошумча маалмыт камтыган виджет кошобуз
                  additionalInformation("${data!.wind}", "${data!.humidity}",
                      "${data!.pressure}", "${data!.feels_like}"),
                    // эми бизде UI даяр болду
                    // API ни интеграция кылабыз
                    // А дегенде модердерди куруп алалы
                ],
              );
            } else if (snapshop.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
              );
           }
           return Container(),
  },
       ));
  }
}
    