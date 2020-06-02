import 'package:barber/constants.dart';
import 'package:barber/models/barbershop.dart';
import 'package:barber/models/category.dart';
import 'package:barber/widgets/barbershop.dart';
import 'package:barber/widgets/category_card.dart';
import 'package:barber/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: OvalBottomBorderClipper(),
                child: Container(
                  width: double.infinity,
                  height: 250.0,
                  padding: EdgeInsets.only(bottom: 50.0),
                  decoration: BoxDecoration(
                    color: kYellow,
                    image: DecorationImage(
                      image: AssetImage("assets/img-1639.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppBar(
                        backgroundColor: Colors.black12.withOpacity(.0),
                        elevation: 0,
                        leading: Icon(Icons.menu),
                        actions: [
                          IconButton(
                            icon: Icon(Icons.filter_list),
                            onPressed: () {},
                          )
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          "Find and book best sertices",
                          style: kTitleStyle.copyWith(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Container(
                        width: double.infinity,
                        height: 50.0,
                        margin: EdgeInsets.symmetric(horizontal: 18.0),
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.white.withOpacity(.9),
                        ),
                        child: TextField(
                          cursorColor: kBlack,
                          decoration: InputDecoration(
                            hintText: "Search Saloon, Spa and Barber",
                            hintStyle: kHintStyle,
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.search,
                              color: kGrey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              CustomListTile(title: "Top Categories"),
              SizedBox(height: 25.0),
              Container(
                width: double.infinity,
                height: 100.0,
                child: ListView.builder(
                  itemCount: categoryList.length,
                  scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var category = categoryList[index];
                    return CategoryCard(category: category);
                  },
                ),
              ),
              SizedBox(height: 30.0),
              CustomListTile(title: "Best Barbershop"),
              SizedBox(height: 25.0),
              Container(
                width: double.infinity,
                height: 150.0,
                child: ListView.builder(
                  itemCount: bestList.length,
                  scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var barbershop = bestList[index];
                    return BarbershopCard(barbershop: barbershop);
                  },
                ),
              ),
              SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
