import 'package:flutter/material.dart';
import 'package:resonate/models/category_model.dart';
import 'package:resonate/models/sony_model.dart';
import 'package:resonate/models/story_model.dart';
import 'package:resonate/views/widgets/category_card.dart';
import 'package:resonate/views/widgets/song_list_tile.dart';
import 'package:resonate/views/widgets/story_card.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: const ExplorePageBody(),
    );
  }
}

class ExplorePageBody extends StatelessWidget {
  const ExplorePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 50,
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 0,
                  vertical: 15,
                ),
                border: const OutlineInputBorder(
                  gapPadding: 4,
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                fillColor: Theme.of(context).colorScheme.onSurface,
                filled: true,
                hintText: 'What do you want to listen to?',
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Inter',
                    ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Categories',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Inter',
                  ),
            ),
            SizedBox(
              height: 370,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: categoryList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.68,
                ),
                itemBuilder: (context, index) {
                  return CategoryCard(
                    categoryModel: categoryList[index],
                  );
                },
              ),
            ),
            Text(
              'Stories',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Inter',
                  ),
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: storiesList.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 300,
                    margin: const EdgeInsets.all(
                      10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: StoryCard(
                      storyModel: storiesList[index],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              'Some Suggestions',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Inter',
                  ),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                primary: true,
                itemCount: storiesList.length,
                itemBuilder: (context, index) {
                  return SongListTile(
                    songModel: songsList[index],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

final List<SongModel> songsList = [
  SongModel(
    name: 'Courtesy Call',
    image: 'assets/Images/Image.png',
    type: 'Hiphop',
    singer: 'Thouhand Foot',
  ),
  SongModel(
    name: 'Older',
    image: 'assets/Images/Image2.png',
    type: 'Hiphop',
    singer: 'Alec Benjamin',
  ),
  SongModel(
    name: 'Change My Clothes',
    image: 'assets/Images/Image.png',
    singer: 'Dream, Alec ',
    type: 'Romance',
  ),
  SongModel(
    name: 'California',
    image: 'assets/Images/Image2.png',
    type: 'Hiphop',
    singer: 'Alec Benjamin',
  ),
];
final List<StoryModel> storiesList = [
  StoryModel(
    name: 'Aya',
    image: 'assets/Images/Image.png',
  ),
  StoryModel(
    name: 'Chandan',
    image: 'assets/Images/Image2.png',
  ),
  StoryModel(
    name: 'Arauch',
    image: 'assets/Images/Image.png',
  ),
  StoryModel(
    name: 'Ayaan',
    image: 'assets/Images/Image2.png',
  ),
];
final List<CategoryModel> categoryList = [
  CategoryModel(
    name: 'Dramma',
    image: 'assets/images/hijri.png',
    color: const Color(0xffDB148B),
  ),
  CategoryModel(
    name: 'Horror',
    image: 'assets/images/muslim.png',
    color: const Color(0xff01634E),
  ),
  CategoryModel(
    name: 'Comdey',
    image: 'assets/images/hijri.png',
    color: const Color(0xff8201E7),
  ),
  CategoryModel(
    name: 'Thriller',
    image: 'assets/images/muslim.png',
    color: const Color(0xff1E3162),
  ),
  CategoryModel(
    name: 'Romance',
    image: 'assets/images/hijri.png',
    color: const Color(0xffDB148B),
  ),
  CategoryModel(
    name: 'Spiritual',
    image: 'assets/images/muslim.png',
    color: const Color(0xff01634E),
  ),
];