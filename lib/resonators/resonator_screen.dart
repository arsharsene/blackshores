import 'package:blackshores/resonators/roverhavoc.dart';
import 'package:flutter/material.dart';
import 'package:blackshores/resonators/aalto.dart';
import 'package:blackshores/resonators/baizhi.dart';
import 'package:blackshores/resonators/brant.dart';
import 'package:blackshores/resonators/roveraero.dart';
import 'package:blackshores/resonators/roverspectro.dart';


// --- Data Model ---
class Resonator {
  final String name;
  final String imagePath;
  final int rarity; // 4 or 5
  final List<String> elements; // Changed to a List of Strings

  Resonator({
    required this.name,
    required this.imagePath,
    required this.rarity,
    required this.elements, // Updated to List<String>
  });
}

// Replace with your actual resonator data and image paths
// --- Resonator Data ---
final List<Resonator> allResonators = [
  // Updated data to use 'elements' as a List<String>
  Resonator(name: 'Aalto', imagePath: 'assets/resonators/Aalto.png', rarity: 4, elements: ['Aero']),
  Resonator(name: 'Baizhi', imagePath: 'assets/resonators/Baizhi.png', rarity: 4, elements: ['Glacio']),
  Resonator(name: 'Brant', imagePath: 'assets/resonators/Brant.png', rarity: 5, elements: ['Fusion']),
  Resonator(name: 'Calcharo', imagePath: 'assets/resonators/Calcharo.png', rarity: 5, elements: ['Electro']),
  Resonator(name: 'Camellya', imagePath: 'assets/resonators/Camellya.png', rarity: 5, elements: ['Havoc']),
  Resonator(name: 'Cantarella', imagePath: 'assets/resonators/Cantarella.png', rarity: 5, elements: ['Havoc']),
  Resonator(name: 'Carlotta', imagePath: 'assets/resonators/Carlotta.png', rarity: 5, elements: ['Glacio']),
  Resonator(name: 'Changli', imagePath: 'assets/resonators/Changli.png', rarity: 5, elements: ['Fusion']),
  Resonator(name: 'Chixia', imagePath: 'assets/resonators/Chixia.png', rarity: 4, elements: ['Fusion']),
  Resonator(name: 'Danjin', imagePath: 'assets/resonators/Danjin.png', rarity: 4, elements: ['Havoc']),
  Resonator(name: 'Jianxin', imagePath: 'assets/resonators/Jianxin.png', rarity: 5, elements: ['Aero']),
  Resonator(name: 'Jinshi', imagePath: 'assets/resonators/Jinshi.png', rarity: 5, elements: ['Spectro']),
  Resonator(name: 'Jiyan', imagePath: 'assets/resonators/Jiyan.png', rarity: 5, elements: ['Aero']),
  Resonator(name: 'Linyang', imagePath: 'assets/resonators/Linyang.png', rarity: 5, elements: ['Glacio']),
  Resonator(name: 'Lumi', imagePath: 'assets/resonators/Lumi.png', rarity: 4, elements: ['Electro']),
  Resonator(name: 'Mortefi', imagePath: 'assets/resonators/Mortefi.png', rarity: 4, elements: ['Fusion']),
  Resonator(name: 'Phoebe', imagePath: 'assets/resonators/Phoebe.png', rarity: 5, elements: ['Spectro']),
  Resonator(name: 'Roccia', imagePath: 'assets/resonators/Roccia.png', rarity: 5, elements: ['Havoc']),
  Resonator(name: 'Rover Spectro', imagePath: 'assets/resonators/RoverSpectro.png', rarity: 5, elements: ['Spectro']),
  Resonator(name: 'Rover Havoc', imagePath: 'assets/resonators/RoverHavoc.png', rarity: 5, elements: ['Havoc']),
  Resonator(name: 'Rover Aero', imagePath: 'assets/resonators/RoverAero.png', rarity: 5, elements: ['Aero']),
  Resonator(name: 'Sanhua', imagePath: 'assets/resonators/Sanhua.png', rarity: 4, elements: ['Glacio']),
  Resonator(name: 'Taoqi', imagePath: 'assets/resonators/Taoqi.png', rarity: 4, elements: ['Havoc']),
  Resonator(name: 'Shorekeeper', imagePath: 'assets/resonators/TheShorekeeper.png', rarity: 5, elements: ['Spectro']),
  Resonator(name: 'Verina', imagePath: 'assets/resonators/Verina.png', rarity: 5, elements: ['Spectro']),
  Resonator(name: 'Xiangli Yao', imagePath: 'assets/resonators/XiangliYao.png', rarity: 5, elements: ['Electro']),
  Resonator(name: 'Yangyang', imagePath: 'assets/resonators/Yangyang.png', rarity: 4, elements: ['Aero']),
  Resonator(name: 'Yinlin', imagePath: 'assets/resonators/Yinlin.png', rarity: 5, elements: ['Electro']),
  Resonator(name: 'Youhu', imagePath: 'assets/resonators/Youhu.png', rarity: 4, elements: ['Glacio']),
  Resonator(name: 'Yuan Wu', imagePath: 'assets/resonators/Yuanwu.png', rarity: 4, elements: ['Electro']),
  Resonator(name: 'Zhezhi', imagePath: 'assets/resonators/Zhezhi.png', rarity: 5, elements: ['Glacio']),
  // Add more resonators here following the pattern from your assets
];


// --- Resonator Screen Widget ---
class ResonatorScreen extends StatefulWidget {
  const ResonatorScreen({Key? key}) : super(key: key);

  @override
  _ResonatorScreenState createState() => _ResonatorScreenState();
}

class _ResonatorScreenState extends State<ResonatorScreen> {
  int? _selectedRarityFilter; // null, 4, or 5
  String? _selectedElementFilter; // null or element string

  // --- Map resonator names to their screen widgets ---
  // You MUST create these screen files and import them above.
  final Map<String, WidgetBuilder> _resonatorScreens = {
    'Aalto': (context) => const AaltoScreen(),
    'Baizhi': (context) => const BaizhiScreen(),
    'Brant': (context) => const BrantScreen(),
    // 'Calcharo': (context) => const CalcharoScreen(),
    // 'Camellya': (context) => const CamellyaScreen(),
    // 'Cantarella': (context) => const CantarellaScreen(),
    // 'Carlotta': (context) => const CarlottaScreen(),
    // 'Changli': (context) => const ChangliScreen(),
    // 'Chixia': (context) => const ChixiaScreen(),
    // 'Danjin': (context) => const DanjinScreen(),
    // 'Jianxin': (context) => const JianxinScreen(),
    // 'Jinshi': (context) => const JinshiScreen(),
    // 'Jiyan': (context) => const JiyanScreen(),
    // 'Linyang': (context) => const LinyangScreen(),
    // 'Lumi': (context) => const LumiScreen(),
    // 'Mortefi': (context) => const MortefiScreen(),
    // 'Phoebe': (context) => const PhoebeScreen(),
    // 'Roccia': (context) => const RocciaScreen(),
    'Rover Spectro': (context) => const RoverSpectroScreen(),
    'Rover Havoc': (context) => const RoverHavocScreen(),
    'Rover Aero': (context) => const RoverAeroScreen(),
    // 'Sanhua': (context) => const SanhuaScreen(),
    // 'Taoqi': (context) => const TaoqiScreen(),
    // 'Shorekeeper': (context) => const ShorekeeperScreen(),
    // 'Verina': (context) => const VerinaScreen(),
    // 'Xiangli Yao': (context) => const XiangliYaoScreen(),
    // 'Yangyang': (context) => const YangyangScreen(),
    // 'Yinlin': (context) => const YinlinScreen(),
    // 'Youhu': (context) => const YouhuScreen(),
    // 'Yuan Wu': (context) => const YuanWuScreen(),
    // 'Zhezhi': (context) => const ZhezhiScreen(),
    // Add mappings for all other resonators you have data for
  };
  // --- End of Map ---

  List<Resonator> get _filteredResonators {
    List<Resonator> filteredList = allResonators;

    // Apply rarity filter
    if (_selectedRarityFilter != null) {
      filteredList = filteredList.where((resonator) => resonator.rarity == _selectedRarityFilter).toList();
    }

    // Apply element filter - check if the resonator's elements list contains the selected element
    if (_selectedElementFilter != null) {
      filteredList = filteredList.where((resonator) => resonator.elements.contains(_selectedElementFilter)).toList();
    }

    return filteredList;
  }

  void _selectRarityFilter(int rarity) {
    setState(() {
      if (_selectedRarityFilter == rarity) {
        _selectedRarityFilter = null; // Toggle off if already selected
      } else {
        _selectedRarityFilter = rarity;
      }
      _selectedElementFilter = null; // Clear element filter when rarity is selected
    });
  }

  void _selectElementFilter(String? element) { // element can be null for 'All Elements'
    setState(() {
      if (_selectedElementFilter == element) {
        _selectedElementFilter = null; // Toggle off if already selected (this would be for specific elements)
      } else {
        _selectedElementFilter = element; // Select the element (or null for All)
      }
      _selectedRarityFilter = null; // Clear rarity filter when element is selected
    });
  }

  void _showAllResonators() {
    setState(() {
      _selectedRarityFilter = null;
      _selectedElementFilter = null;
    });
  }


  @override
  Widget build(BuildContext context) {
    // Extract unique elements from all resonators for filter buttons
    final Set<String> uniqueElements = {};
    for (var resonator in allResonators) {
      uniqueElements.addAll(resonator.elements);
    }
    final List<String> availableElements = uniqueElements.toList();


    return Scaffold(
      // Removed AppBar
      backgroundColor: Colors.black54, // Dark background for the screen
      body: SafeArea( // Use SafeArea to avoid notches and system overlays
        child: Column(
          children: [
            // --- Custom Header ---
            Padding(
              padding: const EdgeInsets.all(16.0), // Adjust padding as needed
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Resonator Icon
                  Image.asset(
                    'assets/icon/resonator_icon.png',
                    height: 100,
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
                          'Resonators',
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
                          'Choose your Resonator',
                          style: TextStyle(
                            fontFamily: 'WuwaFonts',
                            color: Colors.grey,
                            fontSize: 18,
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

            // --- Filter Row ---
            SingleChildScrollView( // Use SingleChildScrollView for horizontal scrolling of filters
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 'Show All' Filter (*)
                    _buildFilterButton('All', () => _showAllResonators(), _selectedRarityFilter == null && _selectedElementFilter == null, Icons.star),

                    // Rarity Filters
                    _buildFilterButton('4', () => _selectRarityFilter(4), _selectedRarityFilter == 4 && _selectedElementFilter == null, Icons.star),
                    _buildFilterButton('5', () => _selectRarityFilter(5), _selectedRarityFilter == 5 && _selectedElementFilter == null, Icons.star),
                    const SizedBox(width: 16), // Space between rarity and element filters

                    // 'All Elements' Filter (Icon)
                    _buildElementFilterIcon(null, _selectedElementFilter == null && _selectedRarityFilter == null), // null signifies 'All' element

                    // Specific Element Filters (Images)
                    ...availableElements.map((element) =>
                        _buildElementFilterImage(element, _selectedElementFilter == element && _selectedRarityFilter == null)
                    ).toList(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),

            // --- Resonator Grid ---
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(8.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Adjust the number of columns as needed
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.8, // Adjusted aspect ratio for potentially taller items
                ),
                itemCount: _filteredResonators.length,
                itemBuilder: (context, index) {
                  final resonator = _filteredResonators[index];
                  return _buildResonatorItem(resonator);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Modified _buildFilterButton to accept an onTap callback
  Widget _buildFilterButton(String text, VoidCallback onTap, bool isSelected, IconData icon) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blueAccent : Color(0xFF36373a),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 18),
            const SizedBox(width: 4.0),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  // Widget for the 'All Elements' icon filter
  Widget _buildElementFilterIcon(String? element, bool isSelected) { // element will be null for this button
    IconData icon = Icons.category; // Default element icon

    return GestureDetector(
      onTap: () => _selectElementFilter(element), // Pass null to select All Elements
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blueAccent : Color(0xFF36373a),
          shape: BoxShape.circle, // Circular button for elements
        ),
        child: Icon(icon, color: Colors.white, size: 24),
      ),
    );
  }

  // Widget for specific element image filters
  Widget _buildElementFilterImage(String element, bool isSelected) {
    // Map element string to asset path
    String assetPath = 'assets/elements/'; // Base path
    switch (element) {
      case 'Aero':
        assetPath += 'aero_icon.png'; // Replace with your actual file name
        break;
      case 'Glacio':
        assetPath += 'glacio_icon.png'; // Replace with your actual file name
        break;
      case 'Fusion':
        assetPath += 'fusion_icon.png'; // Replace with your actual file name
        break;
      case 'Electro':
        assetPath += 'electro_icon.png'; // Replace with your actual file name
        break;
      case 'Havoc':
        assetPath += 'havoc_icon.png'; // Replace with your actual file name
        break;
      case 'Spectro': // Added case for Spectro
        assetPath += 'spectro_icon.png'; // Replace with your actual Spectro file name
        break;
    // Add cases for other elements from your assets/elements folder
      default:
        assetPath += 'default_element.png'; // Fallback image - create a default_element.png
    }


    return GestureDetector(
      onTap: () => _selectElementFilter(element), // Pass the element string
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blueAccent : Color(0xFF36373a),
          shape: BoxShape.circle, // Circular button for elements
        ),
        child: Image.asset( // Use Image.asset here
          assetPath,
          width: 24, // Adjust size as needed
          height: 24, // Adjust size as needed
          // Removed errorBuilder
        ),
      ),
    );
  }

  Widget _buildResonatorItem(Resonator resonator) {
    // Determine background color based on rarity filter only if a rarity filter is active
    Color? backgroundColor;
    // Apply color only if a rarity filter is selected AND no element filter is selected
    if (_selectedRarityFilter == 4 && resonator.rarity == 4 && _selectedElementFilter == null) {
      backgroundColor = Colors.purple[700]; // Purple for ★4 when filtered by rarity only
    } else if (_selectedRarityFilter == 5 && resonator.rarity == 5 && _selectedElementFilter == null) {
      backgroundColor = Colors.yellow[700]; // Yellow for ★5 when filtered by rarity only
    } else {
      backgroundColor = Colors.grey[800]; // Default background
    }

    return GestureDetector(
      onTap: () {
        // Find the corresponding screen widget in the map
        final screenBuilder = _resonatorScreens[resonator.name];

        if (screenBuilder != null) {
          // If a screen is found, navigate to it
          Navigator.push(
            context,
            MaterialPageRoute(builder: screenBuilder),
          );
        } else {
          // Handle cases where a screen for this resonator is not defined
          print('Error: Screen not found for ${resonator.name}');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Details screen not available for ${resonator.name} yet.'),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          // Use the determined background color
          color: backgroundColor, // Apply background color here
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Colors.grey[600]!, // Example border color
            width: 1.0,
          ),
        ),
        child: ClipRRect( // Add ClipRRect to ensure image respects border radius
          borderRadius: BorderRadius.circular(7.0), // Slightly less than container radius
          child: Stack( // Use Stack to place text over the image
            children: [
              // Resonator Image (Positioned to fill the container)
              Positioned.fill(
                child: Image.asset(
                  resonator.imagePath,
                  fit: BoxFit.cover, // Use BoxFit.cover to fill the box
                  alignment: Alignment.topCenter, // Keep focus on the top part
                  errorBuilder: (context, error, stackTrace) { // Add error builder for images
                    print("Error loading image: ${resonator.imagePath} - $error");
                    return const Center(child: Icon(Icons.broken_image, color: Colors.grey, size: 40));
                  },
                ),
              ),

              // Semi-transparent gradient overlay at the bottom for better text readability
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: 40, // Adjust height as needed
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.8) // Adjust opacity
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),

              // Resonator Name (Positioned at the bottom)
              Positioned(
                bottom: 5.0, // Adjust vertical position from bottom slightly
                left: 4.0,   // Add slight horizontal padding
                right: 4.0,  // Add slight horizontal padding
                child: FittedBox( // Wrap Text with FittedBox
                  fit: BoxFit.scaleDown, // Scale down the text if it overflows
                  alignment: Alignment.center, // Keep it centered horizontally
                  child: Text(
                    resonator.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.0, // Keep your base font size
                      fontWeight: FontWeight.w900,
                      fontFamily: 'WuwaFonts',
                      shadows: [ // Shadows help with readability
                        Shadow(
                          blurRadius: 3.0,
                          color: Colors.black.withOpacity(0.7),
                          offset: const Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                    maxLines: 1, // Still good practice to keep maxLines
                    overflow: TextOverflow.ellipsis, // Ellipsis as a fallback visual
                    textAlign: TextAlign.center, // Center text within its own bounds
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}