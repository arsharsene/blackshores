import 'package:blackshores/pages/achievement_screen.dart';
import 'package:blackshores/pages/data_bank_screen.dart';
import 'package:blackshores/pages/items_screen.dart';
import 'package:blackshores/pages/map_screen.dart';
import 'package:blackshores/pages/plan_screen.dart';
import 'package:blackshores/pages/quests_screen.dart';
import 'package:blackshores/resonators/resonator_screen.dart';
import 'package:blackshores/pages/support_me_screen.dart';
import 'package:blackshores/pages/synthesis_screen.dart';
import 'package:blackshores/pages/team_screen.dart';
import 'package:blackshores/pages/weapon_screen.dart';
import 'package:blackshores/pages/about_me_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:async'; // Import the async package for Timer

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // --- IMPORTANT: Replace with your actual image paths ---
  final List<String> carouselImages = [
    'assets/images/carousel_image1.jpg', // Replace
    'assets/images/carousel_image2.jpg', // Replace with a different image if available
    'assets/images/carousel_image3.jpg', // Replace with a different image if available
  ];

  final PageController _pageController = PageController(initialPage: 0); // Start at the first page
  Timer? _timer; // Timer for auto-swiping

  // Define the list of guide items with their names and icon paths
  final List<Map<String, dynamic>> guideItems = [
    {'name': 'Resonator', 'icon': 'assets/icon/resonator_icon.png'},
    {'name': 'Weapon', 'icon': 'assets/icon/weapon_icon.png'},
    {'name': 'Items', 'icon': 'assets/icon/items_icon.png'},
    {'name': 'Plan', 'icon': 'assets/icon/plan_icon.png'},
    {'name': 'Team', 'icon': 'assets/icon/team_icon.png'},
    {'name': 'Quests', 'icon': 'assets/icon/quests_icon.png'},
    {'name': 'Map', 'icon': 'assets/icon/map_icon.png'},
    {'name': 'Data Bank', 'icon': 'assets/icon/data_bank_icon.png'},
    {'name': 'Synthesis', 'icon': 'assets/icon/synthesis_icon.png'},
    {'name': 'Achievement', 'icon': 'assets/icon/achievement_icon.png'},
    {'name': 'Support Me', 'icon': 'assets/icon/support_me_icon.png'},
    {'name': 'About Me', 'icon': 'assets/icon/about_me_icon.png'},
  ];

  // Define the text color
  static const Color textColor = Colors.white; // You can change this color

  @override
  void initState() {
    super.initState();
    // Start the auto-swiping timer
    _startAutoSwipe();
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is removed
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  // Method to start the auto-swipe timer
  void _startAutoSwipe() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) { // Change duration as needed (e.g., 5 seconds)
      if (_pageController.hasClients) { // Check if the page controller is attached
        int currentPage = _pageController.page?.round() ?? 0; // Get current page, default to 0
        int nextPage = (currentPage + 1) % carouselImages.length; // Calculate next page (loops back)

        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 400), // Animation speed
          curve: Curves.easeIn, // Animation curve
        );
      }
    });
  }

  // Renamed the method and adjusted to take item name
  void _navigateToScreen(BuildContext context, String itemName) {
    Widget screenToNavigate;

    switch (itemName) {
      case 'Resonator':
        screenToNavigate = const ResonatorScreen();
        break;
      case 'Weapon':
        screenToNavigate = const WeaponScreen();
        break;
      case 'Items':
        screenToNavigate = const ItemsScreen();
        break;
      case 'Plan':
        screenToNavigate = const PlanScreen();
        break;
      case 'Team':
        screenToNavigate = const TeamScreen();
        break;
      case 'Quests':
        screenToNavigate = const QuestsScreen();
        break;
      case 'Map':
        screenToNavigate = const MapScreen();
        break;
      case 'Data Bank':
        screenToNavigate = const DataBankScreen();
        break;
      case 'Synthesis':
        screenToNavigate = const SynthesisScreen();
        break;
      case 'Achievement':
        screenToNavigate = const AchievementScreen();
        break;
      case 'Support Me':
        screenToNavigate = const SupportMeScreen();
        break;
      case 'About Me':
        screenToNavigate = const AboutMeScreen();
        break;
      default:
        print('Unknown item tapped: $itemName');
        return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screenToNavigate),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header/Logo Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 80,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.error_outline,
                          color: Colors.grey,
                          size: 80,
                        );
                      },
                    ),
                    const SizedBox(width: 15),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Black Shores',
                            style: TextStyle(
                              fontFamily: 'WuwaFonts',
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Guide for Wuthering Waves',
                            style: TextStyle(
                              fontFamily: 'WuwaFonts',
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Image Carousel and Pagination Dots
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: 220,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: carouselImages.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          carouselImages[index],
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Center(
                              child: Text(
                                'Image not found',
                                style: TextStyle(color: Colors.grey),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  // Carousel Pagination Dots (Positioned on top of the image)
                  Positioned(
                    bottom: 16.0,
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: carouselImages.length,
                      effect: const ExpandingDotsEffect(
                        activeDotColor: Colors.white,
                        dotColor: Colors.grey,
                        dotHeight: 8,
                        dotWidth: 8,
                        spacing: 6,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // GridView.builder Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 20.0,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: guideItems.length,
                  itemBuilder: (context, index) {
                    final item = guideItems[index];
                    return InkWell(
                      onTap: () {
                        _navigateToScreen(context, item['name']);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            item['icon'],
                            height: 80,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(
                                Icons.error_outline,
                                color: Colors.grey,
                                size: 60,
                              );
                            },
                          ),
                          const SizedBox(height: 5),
                          Text(
                            item['name'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: textColor,
                              fontFamily: 'WuwaFonts',
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}