import 'package:flutter/material.dart';

class RoverHavocScreen extends StatefulWidget {
  // Consider passing a Resonator data object here in a real application
  const RoverHavocScreen({Key? key}) : super(key: key);

  @override
  _RoverHavocScreenState createState() => _RoverHavocScreenState();
}

class _RoverHavocScreenState extends State<RoverHavocScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize TabController for 4 tabs: BIO, MATERIAL, SKILL, DUPLICATE
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Use a dark background color
      body: SafeArea(
        // Use SafeArea to avoid status bar and notches
        child: Column(
          children: [
            // Top Section: Character Image, Name, Element, Rarity
            _buildTopSection(),

            // Tab Bar (BIO, MATERIAL, SKILL, DUPLICATE)
            _buildTabBar(),

            // Tab Bar View (Displays content based on selected tab)
            _buildTabBarView(),
          ],
        ),
      ),
    );
  }

  // Builds the top section containing the character image and basic info
  Widget _buildTopSection() {
    // This is a simplified representation. A real implementation
    // would likely use a Stack to layer the image and the text info.
    return Container(
      height: 300, // Approximate height for the image area
      child: Stack(
        // Use Stack to layer image and text overlay
        children: [
          // Placeholder for Character Image(s)
          // Replace with your actual image asset path
          Positioned.fill(
            child: Image.asset(
              'assets/placeholder/rover_havoc_placeholder.png', // <-- Replace with your main character image path
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  // Builds the Tab Bar
  Widget _buildTabBar() {
    return Container(
      color: const Color(0XFF2A2B2E), // Dark background for the tab bar
      child: TabBar(
        controller: _tabController,
        tabs: const [
          Tab(child: Text('BIO', style: TextStyle(fontFamily: 'WuwaFonts'))), // Applied WuwaFonts
          Tab(child: Text('MATERIAL', style: TextStyle(fontFamily: 'WuwaFonts'))), // Applied WuwaFonts
          Tab(child: Text('SKILL', style: TextStyle(fontFamily: 'WuwaFonts'))), // Applied WuwaFonts
          Tab(child: Text('CHAIN', style: TextStyle(fontFamily: 'WuwaFonts'))), // Applied WuwaFonts
        ],
        labelColor: Colors.white, // Color of the active tab text
        unselectedLabelColor: Colors.grey, // Color of inactive tab text
        indicatorColor: Colors.purpleAccent, // Color of the active tab indicator
        indicatorSize: TabBarIndicatorSize.label, // Indicator size matches the label width
        labelStyle:
        TextStyle(fontWeight: FontWeight.bold, fontFamily: 'WuwaFonts'), // Applied WuwaFonts
      ),
    );
  }

  // Builds the content area that changes based on the selected tab
  Widget _buildTabBarView() {
    // Expanded makes the TabBarView take up the remaining vertical space
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: [
          // Content for the BIO tab
          _buildBioTab(),

          // Content for the MATERIAL tab
          _buildMaterialTab(),

          // Content for the SKILL tab
          _buildSkillTab(),

          // Content for the DUPLICATE tab (newly added)
          _buildChainTab(),
        ],
      ),
    );
  }

  // Builds the content specifically for the BIO tab
  Widget _buildBioTab() {
    return SingleChildScrollView(
      // Allows the content to be scrollable if it overflows
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'Rover is a multi-attribute Resonator and is the main protagonist of Wuthering Waves.',
              style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'WuwaFonts'),
              textAlign: TextAlign.justify
            // Applied WuwaFonts
          ),
          SizedBox(height: 16), // Spacing
          Text(
              'Awakened with an unknown past, Rover is an Arbiter who embarks on a journey to uncover the truth to regain their lost memories. As secrets are unveiled, they establish deeper connections with the world.',
              style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'WuwaFonts'),
              textAlign: TextAlign.justify// Applied WuwaFonts
          ),
          SizedBox(height: 16), // Spacing
          Text(
            'Combat Roles :',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'WuwaFonts'), // Applied WuwaFonts
          ),
          SizedBox(height: 8), // Spacing
          Text(
            'Main Damage Dealer',
            style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'WuwaFonts'), // Applied WuwaFonts
          ),
          SizedBox(height: 16), // Spacing
          Text(
            'Voice Actors :',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'WuwaFonts'), // Applied WuwaFonts
          ),
          SizedBox(height: 8), // Spacing
          Text(
            'Male Rover',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'WuwaFonts'), // Applied WuwaFonts
          ),
          Text(
            'EN : Chase Brown',
            style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'WuwaFonts'), // Applied WuwaFonts
          ),
          Text(
            'JP : Toshiki Masuda',
            style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'WuwaFonts'), // Applied WuwaFonts
          ),
          SizedBox(height: 8), // Spacing
          Text(
            'Female Rover',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'WuwaFonts'), // Applied WuwaFonts
          ),
          Text(
            'EN : Jane Jackson',
            style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'WuwaFonts'), // Applied WuwaFonts
          ),
          Text(
            'JP : Minami Tanaka',
            style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'WuwaFonts'), // Applied WuwaFonts
          ),
        ],
      ),
    );
  }

  // Builds the content specifically for the MATERIAL tab
  Widget _buildMaterialTab() {
    // Using SingleChildScrollView to make the material list scrollable
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            'ASCENSION MATERIAL',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'WuwaFonts'), // Applied WuwaFonts
          ),
          SizedBox(height: 2),
          Text(
            'TOTAL ACENSION MATERIAL',
            style: TextStyle(color: Colors.grey[400], fontSize: 14, fontFamily: 'WuwaFonts'), // Applied WuwaFonts
          ),
          SizedBox(height: 16),
          // Grid/Wrap for Ascension Materials
          Wrap(
            spacing: 10, // Horizontal spacing between items
            runSpacing: 10, // Vertical spacing between rows
            children: [
              // Material Icons with Quantities (Based on image, using placeholder paths)
              _buildMaterialItem(
                  'assets/items/Item_Shell_Credit.png', '170000'), // Placeholder for Currency
              _buildMaterialItem(
                  'assets/items/Item_LF_Whisperin_Core.png', '4'), // Placeholder Material 1
              _buildMaterialItem(
                  'assets/items/Item_MF_Whisperin_Core.png', '12'), // Placeholder Material 2
              _buildMaterialItem(
                  'assets/items/Item_HF_Whisperin_Core.png', '12'), // Placeholder Material 3
              _buildMaterialItem(
                  'assets/items/Item_FF_Whisperin_Core.png', '4'), // Placeholder Material 4
              _buildMaterialItem(
                  'assets/items/Item_Mysterious_Code.png', '5'), // Placeholder Material 5
              _buildMaterialItem(
                  'assets/items/Item_Pecok_Flower.png', '60'), // Placeholder Material 6
            ],
          ),
          SizedBox(height: 25), // Spacing between sections
          Text(
            'TALENT LEVEL-UP MATERIAL',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'WuwaFonts'), // Applied WuwaFonts
          ),
          SizedBox(height: 2),
          Text(
            'TOTAL TALENT MATERIAL',
            style: TextStyle(color: Colors.grey[400], fontSize: 14, fontFamily: 'WuwaFonts'), // Applied WuwaFonts
          ),
          SizedBox(height: 16),
          // Grid/Wrap for Talent Level-Up Materials
          Wrap(
            spacing: 10, // Horizontal spacing between items
            runSpacing: 10, // Vertical spacing between rows
            children: [
              // Material Icons with Quantities (Based on image, using placeholder paths)
              _buildMaterialItem(
                  'assets/items/Item_Shell_Credit.png', '2030000'), // Placeholder for Currency
              _buildMaterialItem(
                  'assets/items/Item_LF_Whisperin_Core.png', '25'), // Placeholder Material 1
              _buildMaterialItem(
                  'assets/items/Item_MF_Whisperin_Core.png', '28'), // Placeholder Material 2
              _buildMaterialItem(
                  'assets/items/Item_HF_Whisperin_Core.png', '40'), // Placeholder Material 3
              _buildMaterialItem(
                  'assets/items/Item_FF_Whisperin_Core.png', '57'), // Placeholder Material 4
              _buildMaterialItem(
                  'assets/items/Item_Inert_Metallic_Drip.png', '25'), // Placeholder Material 5
              _buildMaterialItem(
                  'assets/items/Item_Reactive_Metallic_Drip.png', '28'), // Placeholder Material 6
              _buildMaterialItem(
                  'assets/items/Item_Polarized_Metallic_Drip.png', '55'), // Placeholder Material 7
              _buildMaterialItem(
                  'assets/items/Item_Heterized_Metallic_Drip.png', '67'), // Placeholder Material 8
              _buildMaterialItem(
                  'assets/items/Item_Dreamless_Feather.png', '26'), // Placeholder Material 9
            ],
          ),
        ],
      ),
    );
  }

  // Helper widget to build a material item with an image and quantity
  Widget _buildMaterialItem(String imagePath, String quantity) {
    return Container(
      width: 60, // Size of the material icon container
      height: 60,
      child: Stack( // Use Stack to overlay text on the image
        alignment: Alignment.bottomRight, // Align quantity text to bottom right
        children: [
          // Material Image
          Positioned.fill(
            child: Image.asset(
              imagePath, // Your material image asset path
              fit: BoxFit.cover, // Adjusts the image to cover the container
              // Add error handling for missing images if needed
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[700], // Placeholder color on error
                  child: Icon(Icons.error, color: Colors.red),
                );
              },
            ),
          ),
          // Quantity Text
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
            // Optional: Add a slight background to the text for readability
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              quantity,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12, // Adjust font size if needed
                fontWeight: FontWeight.bold,
                fontFamily: 'WuwaFonts', // Applied WuwaFonts
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Builds the content specifically for the SKILL tab
  Widget _buildSkillTab() {
    return SingleChildScrollView( // Make the skill list scrollable
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            'SKILLS',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'WuwaFonts'),
            // textAlign: TextAlign.justify, // Not justifying header
          ),
          SizedBox(height: 16), // Spacing

          // Normal Attack
          _buildSkillEntry(
            'Normal Attack - Tune Slayer',
            'Basic Attack',
            'Rover-Havoc performs up to 5 consecutive attacks, dealing Havoc DMG.',
          ),
          SizedBox(height: 16), // Spacing

          // Heavy Attack Section
          _buildSkillEntry(
            'Heavy Attack', // Title within the section
            null, // No subtype mentioned
            'Rover-Havoc consumes STA to attack, dealing Havoc DMG. Use Basic Attack after casting Heavy Attack to cast Basic Attack 4..',
          ),
          SizedBox(height: 16), // Spacing

          // Mid-air Attack
          _buildSkillEntry(
            'Mid-air Attack',
            null, // No subtype mentioned
            'Rover-Havoc consumes STA to cast a Mid-Air Plunging Attack, dealing Havoc DMG.',
          ),
          SizedBox(height: 16), // Spacing

          // Dodge Counter
          _buildSkillEntry(
            'Dodge Counter',
            null, // No subtype mentioned
            'Use Basic Attack after a successful Dodge to attack the target, dealing Havoc DMG.',
          ),
          SizedBox(height: 16), // Spacing

          // Resonance Skill
          _buildSkillEntry(
            'Resonance Skill - Wingblade',
            null, // No subtype mentioned
            'Transform sound into feathers, dealing Havoc DMG.',
          ),
          SizedBox(height: 16), // Spacing

          // Add more skills here following the same pattern
        ],
      ),
    );
  }

  // Helper widget to build a single skill entry
  Widget _buildSkillEntry(String title, String? subTitle, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: 'WuwaFonts', // Applied WuwaFonts
          ),
          // textAlign: TextAlign.justify, // Not justifying title
        ),
        if (subTitle != null) // Display subtitle if provided
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              subTitle,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 14,
                fontFamily: 'WuwaFonts', // Applied WuwaFonts
              ),
              // textAlign: TextAlign.justify, // Not justifying subtitle
            ),
          ),
        SizedBox(height: 4),
        Text(
          description,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 14,
            fontFamily: 'WuwaFonts', // Applied WuwaFonts
          ),
          textAlign: TextAlign.justify, // Justified Description
        ),
      ],
    );
  }

  // Builds the content specifically for the CHAIN tab (Resonance Chain)
  // Renamed from _buildDuplicateTab for clarity as the tab is named 'CHAIN'
  Widget _buildChainTab() {
    return SingleChildScrollView( // Make the content scrollable
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            'RESONANCE CHAIN',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'WuwaFonts'),
            // textAlign: TextAlign.justify, // Not justifying header
          ),
          SizedBox(height: 16), // Spacing

          // Resonance Chain Effects
          _buildResonanceChainEntry(
            '1. Cryptic Insight',
            'Resonance Skill DMG Bonus is increased by 30%.',
          ),
          SizedBox(height: 12), // Spacing between entries

          _buildResonanceChainEntry(
            '2.  Waning Crescent',
            'Reset Resonance Skill Cooldown when Rover enters the Dark Surge state by casting Heavy Attack Devastation.',
          ),
          SizedBox(height: 12),

          _buildResonanceChainEntry(
            '3. Surging Resonance',
            'In the Dark Surge state, Basic Attack 5 restores HP equal to 10% of total HP lost on hit.',
          ),
          SizedBox(height: 12),

          _buildResonanceChainEntry(
            '4. Annihilated Silence',
            'Heavy Attack Devastation and Resonance Liberation Deadening Abyss reduces enemy Havoc RES by 10% for 20s on hit.',
          ),
          SizedBox(height: 12),

          _buildResonanceChainEntry(
            '5. Aeon Symphony',
            'In the Dark Surge state, Basic Attack 5 deals an additional Havoc DMG equal to 50% of Basic Attack 5 DMG.',
          ),
          SizedBox(height: 12),

          _buildResonanceChainEntry(
            '6. Ebbing Undercurrent',
            'In the Dark Surge state, Rovers Crit. Rate is increased by 25%.',
          ),
          SizedBox(height: 12), // Added spacing after the last item

          // Add more entries if needed
        ],
      ),
    );
  }

  // Helper widget to build a single Resonance Chain entry
  Widget _buildResonanceChainEntry(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: 'WuwaFonts', // Applied WuwaFonts
          ),
          // textAlign: TextAlign.justify, // Not justifying title
        ),
        SizedBox(height: 4),
        Text(
          description,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 14,
            fontFamily: 'WuwaFonts', // Applied WuwaFonts
          ),
          textAlign: TextAlign.justify, // Justified Description
        ),
      ],
    );
  }
}