import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  getLocationhere()async{
    var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
  print(position.latitude.toString());
  print(position.longitude.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: ()async {
              var result=await getLocationhere();
              },
                  child:const Text("get location")),
            ],
          ),
        )
      )
    );
  }
}
