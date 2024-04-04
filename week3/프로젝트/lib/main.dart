import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.black,
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "GDSC 모바일 스터디"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Row(children: [
        const SizedBox(
          width: 20,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("과제",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Pretendard",
                fontSize: 20,
              )),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 150),
                      textStyle: const TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {},
                  child: const Column(
                    children: [
                      Text("오늘의 과제",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          )),
                      Icon(
                        Icons.book_outlined,
                        color: Colors.black,
                        size: 60,
                      )
                    ],
                  )),
              const SizedBox(
                width: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 150),
                      textStyle: const TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {},
                  child: const Column(
                    children: [
                      Text("수행할 과제",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          )),
                      Icon(
                        Icons.collections_bookmark_outlined,
                        color: Colors.black,
                        size: 60,
                      )
                    ],
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("나의 수행도",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Pretendard",
                fontSize: 20,
              )),
          SizedBox(
            width: 350,
            height: 340,
            child: TableCalendar(
              firstDay: DateTime.utc(2024, 04, 03),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("나의 다짐",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Pretendard",
                fontSize: 20,
              )),
          const SizedBox(
            height: 10,
          ),
          const Text("과제를 모두 죽이겠다. 크르르르",
              style: TextStyle(
                fontFamily: "Pretendard",
                fontSize: 16,
              )),
        ]),
      ]),
    );
  }
}
