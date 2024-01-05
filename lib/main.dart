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
      title: 'Flutter ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 92, 3, 245)),
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
      backgroundColor: const Color.fromARGB(255, 29, 60, 27),
      appBar: AppBar(
        title: const Text('Aladdin store'),
      ),
      body: FutureBuilder(
        future: HomeRemoteDataSource().getProduct(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.5,
                // mainAxisSpacing: 12,
                // crossAxisSpacing: 12
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) {
                final product = snapshot.data![index];
                return Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          child: Image.network(snapshot.data![index].image),
                          height: 88,
                          width: double.maxFinite,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          product.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          product.description,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          '\$ ${product.price}',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          // textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
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
      ),
    );
  }
}
