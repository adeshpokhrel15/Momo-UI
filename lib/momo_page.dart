import 'package:flutter/material.dart';

class MoMoPage extends StatelessWidget {
  const MoMoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(children: [
          Container(
            height: 250,
            color: Colors.orange,
          ),
          Container(
            height: 250.0,
            color: Colors.white.withOpacity(0.9),
          ),
          Padding(
              padding:
                  const EdgeInsets.only(top: 35.0, left: 30.0, right: 30.0),
              child: Container(
                  padding: const EdgeInsets.only(left: 45.0),
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white),
                  child: const Center(
                      child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search,
                                  size: 16.0, color: Color(0xFF999798)),
                              hintText: 'Find something special',
                              hintStyle: TextStyle(
                                  fontSize: 12.0,
                                  color: Color(0xFF999798))))))),
          Positioned(
              top: 110.0,
              left: 30.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'The Best Momo',
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Color(0xFF312F2E),
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    'Eat all you can',
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Color(0xFF312F2E),
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    children: const <Widget>[
                      Icon(Icons.location_on,
                          color: Color(0xFF7C7574), size: 15.0),
                      SizedBox(width: 10.0),
                      Text(
                        'Basantapur, Kathmandu',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFF7C7574),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              )),
          Positioned(
              top: 225.0,
              child: Container(
                height: screenHeight - 225.0,
                width: screenWidth,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0)),
                    color: Colors.white),
                child: ListView(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Mitho Momo',
                          style: TextStyle(
                              color: Color(0xFFC4C2C2),
                              fontWeight: FontWeight.w600),
                        ),
                        IconButton(
                          icon: const Icon(Icons.rotate_left,
                              color: Color(0xFFC4C2C2)),
                          onPressed: () {},
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                            width: 150.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25.0),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color(0xFFD1C0B9),
                                            blurRadius: 4.0,
                                            spreadRadius: 3.0)
                                      ],
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'https://th.bing.com/th/id/R.9681ce2906f399793783cacb3b024fe9?rik=qldujEBxOgL%2brg&pid=ImgRaw&r=0'),
                                          fit: BoxFit.cover)),
                                ),
                                const Text('Naryan Dai ko Momo',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xFF353535),
                                        fontWeight: FontWeight.w600))
                              ],
                            )),
                        const Text('Location',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFFE0AC9B),
                                fontWeight: FontWeight.w600))
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 30.0,
                      child: const Text(
                        'Heat the food to the right degree, to make it healthy and germ free.',
                        style:
                            TextStyle(fontSize: 12.5, color: Color(0xFF939190)),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Rs. 150',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF322F2E)),
                    ),
                    const Image(
                      image: NetworkImage(
                          'https://th.bing.com/th/id/R.dc98e1fe73101037bbd5a1cd20ca952b?rik=bgKtKqVQHJUXIA&pid=ImgRaw&r=0'),
                      fit: BoxFit.cover,
                      height: 250.0,
                    )
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
