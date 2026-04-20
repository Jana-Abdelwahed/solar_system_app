import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

class Screen extends StatefulWidget {
  final Map<String, String> planet;
  Screen({required this.planet});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final Flutter3DController controller = Flutter3DController();

  get InAppWebViewPlatform => null;
  @override
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0E0E),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.asset('assets/images/top.png', fit: BoxFit.cover),
              ),
              Container(
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black.withOpacity(0.7), Colors.transparent, Colors.black],
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 10,
                right: 10,
                child: Row(
                  children: [
                    _buildBackButton(context),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 48.0),
                        child: Text(
                          widget.planet['name']!.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Text(
                  widget.planet['title'] ?? widget.planet['name']!,
                  style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Flutter3DViewer(
                      controller: controller,
                      src: widget.planet['3dModel']!,
                      progressBarColor: Colors.red,
                    )
                  ),

                  const SizedBox(height: 30),
                  const Text("About", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text(
                    widget.planet['about']!,
                    style: const TextStyle(color: Colors.white70, fontSize: 16, height: 1.5),
                  ),
                  const SizedBox(height: 30),

                  _buildStatRow("Distance from Sun (km)", widget.planet['distance']!),
                  _buildStatRow("Length of Day (hours)", widget.planet['dayLength']!),
                  _buildStatRow("Orbital Period (Earth years)", widget.planet['orbitalPeriod']!),
                  _buildStatRow("Radius (km)", widget.planet['radius']!),
                  _buildStatRow("Mass (kg)", widget.planet['mass']!),
                  _buildStatRow("Gravity (m/s²)", widget.planet['gravity']!),
                  _buildStatRow("Surface Area (km²)", widget.planet['surfaceArea']!),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }

  Widget _buildStatRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(color: Colors.white, fontSize: 16),
          children: [
            TextSpan(
              text: "$label : ",
              style: const TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
            ),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(color: Color(0xFFEF4444), shape: BoxShape.circle),
        child: const Icon(Icons.arrow_back, color: Colors.white, size: 20),
      ),
    );
  }

}