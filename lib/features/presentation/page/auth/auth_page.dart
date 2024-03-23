import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bus/features/presentation/bloc/trip_bloc.dart';
import 'package:test_bus/features/presentation/page/home/trip_home_page.dart';
import 'package:test_bus/injection_container.dart';
import 'package:url_launcher/url_launcher.dart';

class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(MediaQuery.of(context).size.width, 40),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => BlocProvider(
                                  child: const TripHomePage(),
                                  create: (BuildContext context) =>
                                      sl<TripBloc>(),
                                )));
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  )),
              const Spacer(),
              TextButton(
                child: const Text(
                  'Terms and Conditions, Privacy Policy',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () async {
                  final Uri _url = Uri.parse('https://flutter.dev');
                  if (!await launchUrl(_url)) {
                    throw Exception('Could not launch $_url');
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
