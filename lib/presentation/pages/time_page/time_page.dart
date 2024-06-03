import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_lecture_app/application/time_cubit/time_cubit.dart';
import 'package:student_lecture_app/application/time_cubit/time_state.dart';

class FlipView extends StatelessWidget {
  final String label;

  const FlipView({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 80,
        ),
      ),
    );
  }
}

@RoutePage()
class TimePage extends StatefulWidget {
  const TimePage({super.key});

  @override
  TimePageState createState() => TimePageState();
}

class TimePageState extends State<TimePage> {
  @override
  void initState() {
    super.initState();
    // Mengunci orientasi ke landscape ketika halaman dibuka
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  void dispose() {
    // Mengembalikan orientasi ke default ketika halaman ditutup
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimeCubit(),
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Center(
            child: BlocBuilder<TimeCubit, TimeState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildFlipViewWithBackground(state.hour),
                    colonText(),
                    _buildFlipViewWithBackground(state.minute),
                    colonText(),
                    _buildFlipViewWithBackground(state.second),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          state.amPm,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget colonText() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: const Text(
        ":",
        style: TextStyle(
          color: Colors.white,
          fontSize: 50,
        ),
      ),
    );
  }

  Widget _buildFlipViewWithBackground(String label) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: 135, // Lebar tetap
        height: 145, // Tinggi tetap
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlipView(label: label),
          ],
        ),
      ),
    );
  }
}
