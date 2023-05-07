import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            userLocation(),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Discover Best",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 16, 27)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Suitable Property",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 16, 27)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          backgroundColor: Color.fromARGB(255, 5, 9, 48),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 13, bottom: 13),
                          child: Text(
                            "House",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          backgroundColor: Color.fromARGB(255, 5, 9, 48),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 13, bottom: 13),
                          child: Text(
                            "Apartement",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          backgroundColor: Color.fromARGB(255, 5, 9, 48),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 13, bottom: 13),
                          child: Text(
                            "Flot",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          backgroundColor: Color.fromARGB(255, 5, 9, 48),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 13, bottom: 13),
                          child: Text(
                            "Mall",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Best for you",
                style: TextStyle(fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: 310,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://img.staticmb.com/mbcontent//images/uploads/2022/12/Most-Beautiful-House-in-the-World.jpg')),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
              ),
            ),
            serviceCard(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child:
                  Text("Nearby your location", style: TextStyle(fontSize: 17)),
            ),
            const SizedBox(
              height: 10,
            ),
            moreInfo(),
          ],
        ),
      ),
    );
  }
}

userLocation() {
  return const ListTile(
    title: Text(
      "Location",
      style: TextStyle(color: Colors.grey, fontSize: 16),
    ),
    subtitle: Text("Los Angeles, CA",
        style: TextStyle(
            color: Color.fromARGB(255, 8, 39, 65),
            fontSize: 17,
            fontWeight: FontWeight.bold)),
    trailing: CircleAvatar(
      radius: 40,
      backgroundImage: NetworkImage(
          "https://img.lovepik.com/free-png/20211104/lovepik-a-handsome-boy-with-a-diamond-ring-ready-to-png-image_400279885_wh1200.png"),
    ),
  );
}

serviceCard() {
  return Center(
    child: Container(
      padding: const EdgeInsets.all(20),
      width: 310,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 8, 27, 43),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "CRAFTSMAN HOUSE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            "520 N BTOUDRY AVE LOS ANGELES",
            style: TextStyle(
                fontSize: 15, color: Color.fromARGB(255, 80, 91, 100)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.bedroom_child_rounded,
                color: Colors.amber,
                size: 30,
              ),
              Text(
                "4 Beds",
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 80, 91, 100)),
              ),
              Icon(
                Icons.bathtub_rounded,
                color: Colors.amber,
                size: 30,
              ),
              Text(
                "4 Baths",
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 80, 91, 100)),
              ),
              Icon(
                Icons.garage_rounded,
                color: Colors.amber,
                size: 30,
              ),
              Text(
                "1 Garage",
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 80, 91, 100)),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

moreInfo() {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Row(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1604014237800-1c9102c219da?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aG91c2UlMjBpbnRlcmlvcnxlbnwwfHwwfHw%3D&w=1000&q=80')),
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
        Container(
          // margin: EdgeInsets.only(left: 10),
          width: 240,
          height: 130,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 212, 212, 212)),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.bedroom_child_rounded,
                  color: Colors.amber,
                  size: 30,
                ),
                Text(
                  "4 Beds",
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 80, 91, 100)),
                ),
                Icon(
                  Icons.bathtub_rounded,
                  color: Colors.amber,
                  size: 30,
                ),
                Text(
                  "4 Baths",
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 80, 91, 100)),
                ),
                Icon(
                  Icons.garage_rounded,
                  color: Colors.amber,
                  size: 30,
                ),
                Text(
                  "1 Garage",
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 80, 91, 100)),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
