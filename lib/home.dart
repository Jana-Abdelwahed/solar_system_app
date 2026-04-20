import 'package:flutter/material.dart';

import 'screen.dart';

class Home_screen extends StatefulWidget {
  @override
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  final PageController _pageController = PageController();

  final List<Map<String, String>> planets = [
    {
      'name': 'Sun',
      'image': 'assets/images/sun.png',
      '3dModel': 'assets/3d/sun.glb',
      'title': "The Sun: Our Solar System's Star",
      'about': "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      'distance': '0',
      'dayLength': '0',
      'orbitalPeriod': '0',
      'radius': '695,700',
      'mass': '1.989 × 10³⁰',
      'gravity': '274',
      'surfaceArea': '6.09 × 10¹²',
    },
    {
      'name': 'Mercury',
      'image': 'assets/images/mercury.png',
      '3dModel': 'assets/3d/mercury.glb',
      'title': 'Mercury: The Closest Planet',
      'about': "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      'distance': '57,909,227',
      'dayLength': '1,407.60',
      'orbitalPeriod': '0.24',
      'radius': '2,439.70',
      'mass': '3.301 × 10²³',
      'gravity': '3.7',
      'surfaceArea': '7.48 × 10⁷',
    },
    {
      'name': 'Venus',
      'image': 'assets/images/venus.png',
      '3dModel': 'assets/3d/venus.glb',
      'title': "Venus: Earth's Toxic Twin",
      'about': "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
      'distance': '108,209,072',
      'dayLength': '5,832.20',
      'orbitalPeriod': '0.62',
      'radius': '6,051.80',
      'mass': '4.867 × 10²⁴',
      'gravity': '8.87',
      'surfaceArea': '4.60 × 10⁸',
    },
    {
      'name': 'Earth',
      'image': 'assets/images/earth.png',
      '3dModel': 'assets/3d/earth.glb',
      'title': 'Earth: Our Blue Marble',
      'about': "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
      'distance': '149,598,026',
      'dayLength': '23.93',
      'orbitalPeriod': '1',
      'radius': '6,371',
      'mass': '5.972 × 10²⁴',
      'gravity': '9.81',
      'surfaceArea': '5.10 × 10⁸',
    },
    {
      'name': 'Mars',
      'image': 'assets/images/mars.png',
      '3dModel': 'assets/3d/mars.glb',
      'title': 'Mars: The Red Planet',
      'about': "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
      'distance': '227,943,824',
      'dayLength': '24.62',
      'orbitalPeriod': '1.88',
      'radius': '3,389.50',
      'mass': '6.39 × 10²³',
      'gravity': '3.71',
      'surfaceArea': '1.45 × 10⁸',
    },
    {
      'name': 'Jupiter',
      'image': 'assets/images/jupiter.png',
      '3dModel': 'assets/3d/jupiter.glb',
      'title': 'Jupiter: The Gas Giant',
      'about': "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
      'distance': '778,547,669',
      'dayLength': '9.92',
      'orbitalPeriod': '11.86',
      'radius': '69,911',
      'mass': '1.898 × 10²⁷',
      'gravity': '24.79',
      'surfaceArea': '6.21 × 10¹⁵',
    },
    {
      'name': 'Saturn',
      'image': 'assets/images/saturn.png',
      '3dModel': 'assets/3d/saturn.glb',
      'title': 'Saturn: The Ringed Planet',
      'about': "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
      'distance': '1,426,666,422',
      'dayLength': '10.66',
      'orbitalPeriod': '29.46',
      'radius': '58,232',
      'mass': '5.683 × 10²⁶',
      'gravity': '10.44',
      'surfaceArea': '4.27 × 10¹⁵',
    },
    {
      'name': 'Uranus',
      'image': 'assets/images/uranus.png',
      '3dModel': 'assets/3d/uranus.glb',
      'title': 'Uranus: The Tilted Planet',
      'about': "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
      'distance': '2,870,990,000',
      'dayLength': '17.24',
      'orbitalPeriod': '84.01',
      'radius': '25,362',
      'mass': '8.681 × 10²⁵',
      'gravity': '8.69',
      'surfaceArea': '8.1 × 10¹⁵',
    },
    {
      'name': 'Neptune',
      'image': 'assets/images/neptune.png',
      '3dModel': 'assets/3d/neptune.glb',
      'title': 'Neptune: The Distant World',
      'about': "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
      'distance': '4,498,252,900',
      'dayLength': '16.11',
      'orbitalPeriod': '164.8',
      'radius': '24,622',
      'mass': '1.024 × 10²⁶',
      'gravity': '11.15',
      'surfaceArea': '7.65 × 10¹⁵',
    },
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E0E0E),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/top.png',
                  fit: BoxFit.cover,
                ),
              ),

              Container(
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.transparent,
                      Colors.black.withOpacity(0.8),
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'Explore',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 20,
                left: 20,
                child: Text(
                  'Which planet\n would you like to explore?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemCount: planets.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        planets[index]['image']!,
                        fit: BoxFit.contain,
                      );
                    },
                  ),
                ),

                const SizedBox(height: 40),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCircleButton(
                        icon: Icons.arrow_back,
                        onPressed: () {
                          _pageController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),

                      Text(
                        planets[_currentPage]['name']!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      _buildCircleButton(
                        icon: Icons.arrow_forward,
                        onPressed: () {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 60),

                _buildExploreButton(planets[_currentPage]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircleButton({required IconData icon, required VoidCallback onPressed}) {
    return IconButton(
      onPressed: onPressed,
      icon: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color(0xFFEF4444),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white, size: 24),
      ),
    );
  }

  Widget _buildExploreButton(Map<String, String> planetData) {
    return SizedBox(
      width: 320,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(
              context,
              'screen',
              arguments: planetData
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFEF4444),
          shape: StadiumBorder(),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explore ${planetData['name']}',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Icon(Icons.arrow_forward, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }

}