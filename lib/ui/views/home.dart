import 'package:flutter/material.dart';

Color gradientStartColor = Color(0xff11998e);
Color gradientEndColor = Color(0xff0575E6);

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 150.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
            // boxShadow: <BoxShadow>[
            //   BoxShadow(
            //     color: gradientStartColor,
            //     offset: Offset(1.0, 6.0),
            //     blurRadius: 10.0,
            //   ),
            //   BoxShadow(
            //     color: gradientEndColor,
            //     offset: Offset(1.0, 6.0),
            //     blurRadius: 10.0,
            //   ),
            // ],
            gradient: LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: const FractionalOffset(0.2, 0.2),
                end: const FractionalOffset(1.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 4,
                child: IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ),
              Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: Text(
                      'Flutter Book',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  )),
              Container(
                width: MediaQuery.of(context).size.width / 4,
                child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
