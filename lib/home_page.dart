import 'package:flutter/material.dart';
import 'package:momo_design/momo_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 185,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://media-exp1.licdn.com/dms/image/C5103AQG3S-bEiqFbIw/profile-displayphoto-shrink_800_800/0/1580025162286?e=1668643200&v=beta&t=xlloKEr5WK6vFExuX-TmJbYXgMHSsa2BRL8tVzXFYeA'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const Text(
                      'Hello Ashwin',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF42403F)),
                    )
                  ]),
            ),
            IconButton(
                onPressed: () {},
                icon:
                    Icon(Icons.food_bank, color: Colors.grey.withOpacity(0.7))),
          ],
        ),
      ),
      Container(
        height: 200.0,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://th.bing.com/th/id/R.237eaacd763186a94cd33d98b30aff7b?rik=1Hjx7XAgDb0OlQ&pid=ImgRaw&r=0'),
                fit: BoxFit.contain)),
      ),
      const SizedBox(height: 20.0),
      const Center(
        child: Text(
          'MOMO',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF322F2E)),
        ),
      ),
      const SizedBox(height: 10.0),
      const Center(
        child: Text(
          'मो : मो',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF808080)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 30.0,
          child: const Text(
            'Momo are bite-size dumplings made with a spoonful of stuffing wrapped in dough. Momo are usually steamed, though they are sometimes fried or steam-fried. Meat or vegetables fillings becomes succulent as it produces an intensively flavored broth sealed inside the wrappers. Variants of the dish developed later in Nepal after it became popular among Asians.',
            style: TextStyle(fontSize: 12.5, color: Color(0xFF8E8989)),
          ),
        ),
      ),
      Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: const Icon(Icons.remove_circle_outline),
                        color: const Color(0xFFC4C2C5),
                        onPressed: () {}),
                    SizedBox(
                      width: 143.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                            'Rs. 150',
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF322F2E)),
                          ),
                          Text(
                            '1 ORDER',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF322F2E)),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline),
                      color: const Color(0xFF4C4A4A),
                      onPressed: () {},
                    ),
                  ]))),
      Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MoMoPage()));
              },
              child: Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFF312F2E),
                child: const Center(
                  child: Text('Add to Basket',
                      style: TextStyle(color: Colors.white)),
                ),
              ))),
      const SizedBox(height: 3.0),
      const Center(
        child: Text(
          ' Ashwin grab the second order in half price',
          style: TextStyle(fontSize: 12.0, color: Color(0xFF8E8989)),
        ),
      ),
    ]));
  }
}
