import 'package:aladdin_store/feature/home/data/data_source/remote_data_source.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const App(),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 92, 218, 81),
      appBar: AppBar(
        title: const Text('app'),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1 / 1.5),
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) {
                final product = snapshot.data![index];
                return Container(

                  margin:  const EdgeInsets.all(6),
                  padding:  const EdgeInsets.all(6),
                    decoration: const BoxDecoration(color: Colors.grey),
                    child: Column(
                      children: [
                        Container(


                          child: Image.network(snapshot.data![index].image),
                          height: 88,
                          width: double.maxFinite,
                        ),
                        Text(
                          product.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '$product.price',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ));
              },
            );
          } else {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
        },
        future: HomeRemoteDataSource().getProduct(),
      ),
    );
  }
}
