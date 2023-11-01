import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/image_strings.dart';
import 'package:flutter_study_app/src/constants/sizes.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';
import 'package:flutter_study_app/src/features/home/models/dashboard/CategoriesModel.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/CategoriesWidget.dart';
import 'package:flutter_study_app/src/features/home/screens/dashboard/DashBoard.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu_rounded,
          color: Colors.black,
        ),
        title: Text(
          txtLabel,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                  color: Colors.black),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person),
                splashRadius: 1,
              ))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Heading ---
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txtGreeting,
                  style: txtTheme.titleSmall,
                ),
                Text(
                  txtSubGreeting,
                  style: txtTheme.headlineSmall,
                )
              ],
            ),
            // --- Search Bar ---
            const SizedBox(height: 20.0),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                width: size.width,
                height: defaultHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(width: 2, color: blueAccent),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      txtSearch,
                      style: txtTheme.bodyMedium
                          ?.apply(color: Colors.grey.withOpacity(0.7)),
                    ),
                    const Icon(
                      Icons.search_rounded,
                      color: blueAccent,
                    )
                  ],
                )),
            const SizedBox(height: 20.0),
            // --- Categories
            const CategoriesWidget(),
          ],
        ),
      ),
    );
  }
}

// const SingleChildScrollView(
//   scrollDirection: Axis.horizontal,
//   child:
//       CategoriesWidget()
//       CategoriesWidget(
//           model: CategoriesModel(image: icPython, title: txtPython)),
//       CategoriesWidget(
//           model: CategoriesModel(image: icJava, title: txtJava)),
//       CategoriesWidget(
//           model:
//               CategoriesModel(image: icFlutter, title: txtFlutter)),
//       CategoriesWidget(
//           model: CategoriesModel(
//               image: icGraphicDesign, title: txtGraphicDesign)),
//       CategoriesWidget(
//           model: CategoriesModel(
//               image: icArtificialIntelligence,
//               title: txtArtificialIntelligence)),
// )
