import 'package:aladdin_store/feature/home/domain/entity/product.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleProductPage extends StatelessWidget {
  final ProductEntity product;
  const SingleProductPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: NestedScrollView(
        headerSliverBuilder: (
          BuildContext context,
          bool innerBoxIsScrolled,
        ) {
          return [
            SliverAppBar(
              centerTitle: false,
              backgroundColor: Colors.white,
              expandedHeight: 300,
              toolbarHeight: 70,
              flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    product.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.acme(
                      textStyle: const TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  background: Image.network(product.image)),
              // pinned: true,
            ),
          ];
        },
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/a1.jpeg'), 
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            // padding: ,
            children: [
              const Gap(30),
              Center(
                child: Text(
                  product.title,
                  style: GoogleFonts.aladin(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      letterSpacing: .50000,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const Gap(30),
              Text(
                product.description,
                style: GoogleFonts.abel(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    letterSpacing: .50000,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Gap(30),
              Center(
                child: Text(
                  "Category: ${product.category}",
                  style: GoogleFonts.acme(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      letterSpacing: .50000,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Center(
                child: Text(
                  "\$ ${product.price}",
                  style: GoogleFonts.acme(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      letterSpacing: .50000,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
