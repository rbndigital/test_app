import 'package:flutter/material.dart';

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(48, 46, 48, 1),
      body: SafeArea(
          child: Stack(
        children: [
          Container(
              padding: const EdgeInsets.only(top: 40),
              child: _buildCategoryItems()),
          Container(
            margin: EdgeInsets.only(top: 124, left: 16, right: 16),
            child: ListView(
              children: [ItemCategory(), ItemCategory(), ItemCategory()],
            ),
          )
        ],
      )),
    );
  }

  SingleChildScrollView _buildCategoryItems() {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CategoryItem(
              image: Image.asset('assets/img/icono1.png'),
              onTap: () {
                print('Entro');
              }),
          CategoryItem(
              image: Image.asset('assets/img/icono2.png'),
              onTap: () {
                print('Entro');
              }),
          CategoryItem(
              image: Image.asset('assets/img/icono3.png'),
              onTap: () {
                print('Entro');
              }),
          CategoryItem(
              image: Image.asset('assets/img/icono4.png'),
              onTap: () {
                print('Entro');
              }),
          CategoryItem(
              image: Image.asset('assets/img/icono5.png'),
              onTap: () {
                print('Entro');
              }),
        ],
      ),
    );
  }
}

class ItemCategory extends StatelessWidget {
  const ItemCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('1 Ctvnews.ca', style: TextStyle(color: Colors.white)),
          SizedBox(height: 10),
          Text('Star Wars actor Andrew Jack dies from COVID-19-CTV News',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          SizedBox(height: 10),
          Image.asset('assets/img/imageItemCategory.png'),
          SizedBox(height: 10),
          Text(
              'Andrew Jack, a British actor and dialect coach who had roles in a number of "Star Wars movies, has died aged 76 after contracting COVID-19, his agent has said.',
              style: TextStyle(color: Colors.white)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red, shape: StadiumBorder()),
                  onPressed: () {},
                  child: Icon(Icons.star_border)),
              SizedBox(width: 14),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                  onPressed: () {},
                  child: Icon(Icons.messenger_sharp))
            ],
          )
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final Image image;
  final Function onTap;

  const CategoryItem({
    Key? key,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.height * 0.09,
        height: MediaQuery.of(context).size.height * 0.09,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(194, 193, 196, 1),
          shape: BoxShape.circle,
          image: DecorationImage(image: this.image.image, scale: 3),
        ),
      ),
      onTap: () => this.onTap(),
    );
  }
}
