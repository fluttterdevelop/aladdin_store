import 'package:aladdin_store/core/usecase/usecase.dart';
import 'package:aladdin_store/feature/home/data/data_source/remote_data_source.dart';
import 'package:aladdin_store/feature/home/data/repository/product.dart';
import 'package:aladdin_store/feature/home/domain/usecase/get_product.dart';
import 'package:aladdin_store/feature/home/presentation/bloc/bloc/product_bloc.dart';
import 'package:aladdin_store/feature/home/presentation/pages/single_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 187, 239, 183),
      appBar: AppBar(
        title: Text(
          'Aladdin store',
          style: GoogleFonts.acme(
            textStyle:
                const TextStyle(color: Colors.blue, letterSpacing: .50000),
          ),
        ),
        //  style: GoogleFonts.getFont('Lato'),),
        // title:  Text('Aladdin store',style: GoogleFonts.acme(background: Colors.greenbackgroundColor: Color.fromARGB(255, 246, 183, 11)),),
      ),
      body: BlocProvider(
        create: (context) => ProductBloc(),
        child: Builder(builder: (context) {
          return FutureBuilder(
            // future: HomeRemoteDataSource().getProduct(),

            future: GetProductUseCase(
              ProductRepositoryImpl(
                HomeRemoteDataSource(),
              ),
            ).call(NoParams()),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.data!.isLeft) {
                  return SizedBox();
                } else {
                  final list = snapshot.data!.right;

                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.5,
                      // mainAxisSpacing: 12,
                      // crossAxisSpacing: 12
                    ),
                    itemCount: list.length,
                    itemBuilder: (_, index) {
                      final product = list[index];
                      return GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          // Navigator.of(context).pushNamed('/product_single');

                          Navigator.of(context).push(
                            CupertinoPageRoute(
                                builder: (_) =>
                                    SingleProductPage(product: product)),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.all(16),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: BlocBuilder<ProductBloc, ProductState>(
                              builder: (context, state) {
                            return Column(
                              children: [
                                const Gap(56),

                                SizedBox(
                                  height: 88,
                                  width: double.maxFinite,
                                  child: Image.network(
                                    product.image,
                                  ),
                                ),
                                
                                const Gap(36),

                                Text(
                                  product.title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.aladin(
                                    textStyle: const TextStyle(
                                      color: Colors.blue,
                                      letterSpacing: .50000,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                               
                                const Gap(16),
                                Text(
                                  product.description,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.aladin(
                                    textStyle: const TextStyle(
                                      color: Colors.blue,
                                      letterSpacing: .50000,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const Gap(16),
                                Text(
                                  '\$ ${product.price}',
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  // textAlign: TextAlign.center,

                                  style: GoogleFonts.aladin(
                                    textStyle: const TextStyle(
                                      color: Colors.blue,
                                      letterSpacing: .50000,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            );
                          }),
                        ),
                      );
                    },
                  );
                }
              } else {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }
            },
          );
        }),
      ),
    );
  }
}
