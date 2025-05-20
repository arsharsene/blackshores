import 'package:flutter/material.dart';

class RoverAeroScreen extends StatefulWidget {
  // Consider passing a Resonator data object here in a real application
  const RoverAeroScreen({Key? key}) : super(key: key);

  @override
  _RoverAeroScreenState createState() => _RoverAeroScreenState();
}

class _RoverAeroScreenState extends State<RoverAeroScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize TabController for 5 tabs: BIO, MATERIAL, SKILL, CHAIN, TEAM
    _tabController = TabController(length: 5, vsync: this);
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

            // Tab Bar (BIO, MATERIAL, SKILL, CHAIN, TEAM)
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
              'assets/placeholder/rover_aero_placeholder.png', // <-- Replace with your main character image path
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
          Tab(child: Text('BUILD', style: TextStyle(fontFamily: 'WuwaFonts'))), // Applied WuwaFonts
          Tab(child: Text('SKILL', style: TextStyle(fontFamily: 'WuwaFonts'))), // Applied WuwaFonts
          Tab(child: Text('CHAIN', style: TextStyle(fontFamily: 'WuwaFonts'))), // Applied WuwaFonts
          Tab(child: Text('TEAM', style: TextStyle(fontFamily: 'WuwaFonts'))), // Applied WuwaFonts - New Tab
        ],
        labelColor: Colors.white, // Color of the active tab text
        unselectedLabelColor: Colors.grey, // Color of inactive tab text
        indicatorColor: Colors.tealAccent, // Color of the active tab indicator
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

          // Content for the CHAIN tab
          _buildChainTab(),

          // Content for the TEAM tab (newly added)
          _buildTeamTab(),
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
            textAlign: TextAlign.justify,
            // Applied WuwaFonts
          ),
          SizedBox(height: 16), // Spacing
          Text(
            'Awakened with an unknown past, Rover is an Arbiter who embarks on a journey to uncover the truth to regain their lost memories. As secrets are unveiled, they establish deeper connections with the world.',
            style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'WuwaFonts'),
            textAlign: TextAlign.justify, // Applied WuwaFonts
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
            '• Support and Healer',
            style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'WuwaFonts'), // Applied WuwaFonts
          ),
          Text(
            '• Resonance Skill Damage',
            style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'WuwaFonts'), // Applied WuwaFonts
          ),
          Text(
            '• Aero Erosion',
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
                  'assets/items/Item_LF_Tidal_Residuum.png', '25'), // Placeholder Material 1
              _buildMaterialItem(
                  'assets/items/Item_MF_Tidal_Residuum.png', '28'), // Placeholder Material 2
              _buildMaterialItem(
                  'assets/items/Item_HF_Tidal_Residuum.png', '40'), // Placeholder Material 3
              _buildMaterialItem(
                  'assets/items/Item_FF_Tidal_Residuum.png', '57'), // Placeholder Material 4
              _buildMaterialItem(
                  'assets/items/Item_Inert_Metallic_Drip.png', '25'), // Placeholder Material 5
              _buildMaterialItem(
                  'assets/items/Item_Reactive_Metallic_Drip.png', '28'), // Placeholder Material 6
              _buildMaterialItem(
                  'assets/items/Item_Polarized_Metallic_Drip.png', '55'), // Placeholder Material 7
              _buildMaterialItem(
                  'assets/items/Item_Heterized_Metallic_Drip.png', '67'), // Placeholder Material 8
              _buildMaterialItem(
                  'assets/items/Item_When_Irises_Bloom.png', '26'), // Placeholder Material 9
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
            'Normal Attack - Wind Cutter',
            'Basic Attack',
            'Perform up to 4 consecutive attacks, dealing Aero DMG.',
          ),
          SizedBox(height: 16), // Spacing

          // Heavy Attack Section
          _buildSkillEntry(
            'Heavy Attack', // Title within the section
            null, // No subtype mentioned
            'Consume STA to attack the target, dealing Aero DMG.\nNormal Attack right after casting the skill to perform Basic Attack Stage 3 directly.',
          ),
          SizedBox(height: 16), // Spacing

          // Heavy Attack - Razor Wind
          _buildSkillEntry(
              'Heavy Attack - Razor Wind',
              'Hold Normal Attack after casting Basic Attack stage 3, Dodge Counter, or Heavy Attack to cast Heavy Attack - Razor Wind.',
              'Consume STA to attack the target, dealing Aero DMG.'
          ),
          SizedBox(height: 16),

          // Mid-air Attack
          _buildSkillEntry(
            'Mid-air Attack',
            null, // No subtype mentioned
            'Consume STA to perform Plunging Attack, dealing Aero DMG.\n• Normal Attack shortly after landing to cast Basic Attack Stage 4.\n• At max Windstrings, Normal Attack shortly after landing to cast Resonance Skill Unbound Flow.',
          ),
          SizedBox(height: 16), // Spacing

          // Dodge Counter
          _buildSkillEntry(
            'Dodge Counter',
            null, // No subtype mentioned
            'Normal Attack right after a successful Dodge to attack the target, dealing Aero DMG.',
          ),
          SizedBox(height: 16), // Spacing

          // Resonance Skill
          _buildSkillEntry(
            'Resonance Skill - Illusion Breaker',
            'Awakening Gale',
            'Jump up into the mid-air and slash the target, dealing Aero DMG.',
          ),
          SizedBox(height: 16), // Spacing

          // Skyfall Severance
          _buildSkillEntry(
            'Skyfall Severance',
            null, // No subtype mentioned
            'While in mid-air, Resonance Skill to deal Aero DMG, which removes all stacks of Spectro Frazzle, Havoc Bane, Fusion Burst, Glacio Chase and Electro Flash from the target hit and inflicts 1 stack of Aero Erosion for each stack removed.',
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
            '1. Storm Subsides in the Void',
            'Casting Mid-air Attack Cloudburst Dance enhances Rover\'s resistance to interruption for 3s.',
          ),
          SizedBox(height: 12), // Spacing between entries

          _buildResonanceChainEntry(
            '2. Glimmers Fade into the Dark',
            'Casting Resonance Skill Unbound Flow continuously restores HP for the Resonator on the field by 20% of Rover\'s ATK every 3s for 30s. When the Resonator on the field has an HP lower than 35%, immediately restore 10% of their lost HP. This restoration effect can be triggered once every 10s and will not be affected by any Healing Bonus.',
          ),
          SizedBox(height: 12),

          _buildResonanceChainEntry(
            '3. Illusions Collapse in a Grip',
            'Aero DMG Bonus is increased by 15%.',
          ),
          SizedBox(height: 12),

          _buildResonanceChainEntry(
            '4. Boundaries Shatter in an Instant',
            'Casting Mid-air Attack Cloudburst Dance increases Resonance Skill DMG Bonus by 15% for 5s.',
          ),
          SizedBox(height: 12),

          _buildResonanceChainEntry(
            '5. Life and Death Intertwine',
            'The DMG Multiplier of Resonance Liberation Omega Storm is increased by 20%.',
          ),
          SizedBox(height: 12),

          _buildResonanceChainEntry(
            '6. All Crumble in the Wind',
            'The DMG Multiplier of Resonance Skill Unbound Flow is increased by 30%.',
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

  // Builds the content specifically for the TEAM tab
  Widget _buildTeamTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            'TEAM COMPOSITION',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'WuwaFonts'),
          ),
          SizedBox(height: 16),
          Text(
            'This section will contain information about recommended team compositions for Aero Rover.',
            style: TextStyle(
                color: Colors.white70, fontSize: 16, fontFamily: 'WuwaFonts'),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 16),
          // You can add more detailed team information here,
          // such as character icons, synergy descriptions, etc.
          // Example:
          _buildTeamCompositionEntry(
            'Sub-DPS Aero Rover',
            ['Jiyan','Mortefi', 'Rover (Aero)'], // Placeholder characters
            'Aero Rover amplifies Jiyan Aero DMG via their free signature weapon Bloodpact Pledge passive, and the healing they provide means they can effortlessly trigger the Rejuvenating Glow set effect for some extra ATK% and Aero DMG% thanks to their weapon. This makes the pair suitable, but unfortunately they fall behind other Support options like Verina and Shorekeeper because of their higher buffing potential and Jiyan inability to exploit Aero Erosion.',
          ),
        ],
      ),
    );
  }

//Helper widget for building a team composition entry (optional)
Widget _buildTeamCompositionEntry(String title, List<String> characters, String description) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'WuwaFonts',
        ),
      ),
      SizedBox(height: 8),
      Text(
        'Characters: ${characters.join(', ')}',
        style: TextStyle(
          color: Colors.grey[400],
          fontSize: 16,
          fontFamily: 'WuwaFonts',
        ),
      ),
      SizedBox(height: 4),
      Text(
        description,
        style: TextStyle(
          color: Colors.white70,
          fontSize: 16,
          fontFamily: 'WuwaFonts',
        ),
        textAlign: TextAlign.justify,
      ),
    ],
  );
}
}