import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Location {
  final String name;
  final String address;
  final String mapsUrl;

  Location({required this.name, required this.address, required this.mapsUrl});
}

class LocationListScreen extends StatefulWidget {
  const LocationListScreen({Key? key}) : super(key: key);

  @override
  _LocationListScreenState createState() => _LocationListScreenState();
}

class _LocationListScreenState extends State<LocationListScreen> {
  TextEditingController _searchController = TextEditingController();
  List<Location> allLocations = [
    Location(
      name: 'Tokyo, Japan',
      address: """Tokyo Tower- 4 Chome-2-8 Shibakoen, Minato City, Tokyo 105-0011, Japan""",
      mapsUrl: 'https://maps.app.goo.gl/Sv1gQhV6BPRjZE7C9?g_st=iw',
    ),
    Location(
      name: 'Paris, France',
      address: """Eiffel Tower- Champ de Mars, 5 Avenue Anatole France, 75007 Paris, France""",
      mapsUrl: 'https://maps.app.goo.gl/PchJYz2AsnkaCuZM8?g_st=iw',
    ),
    Location(
      name: 'Istanbul, Turkey',
      address: """Blue Mosque (Sultanahmet Camii) 
- Sultan Ahmet Mahallesi, Atmeydanı Cd. No:7, 34122 Fatih/Istanbul, Turkey""",
      mapsUrl: 'https://maps.app.goo.gl/wyiEp4ejC6rwkPH16?g_st=iw',
    ),
    Location(
      name: 'Rio de Janeiro, Brazil',
      address: """Christ the Redeemer Statue 
- Parque Nacional da Tijuca - Alto da Boa Vista, Rio de Janeiro - RJ, 22241-330, Brazil""",
      mapsUrl: 'https://maps.app.goo.gl/obN7gopyUKhh4dMT6?g_st=iw',
    ),
    Location(
      name: 'Dubai, United Arab Emirates',
      address: """Burj Khalifa 
- 1 Sheikh Mohammed bin Rashid Blvd, Downtown Dubai, Dubai, United Arab Emirates""",
      mapsUrl: 'https://maps.app.goo.gl/gXtk2LFWBXcBvZ7e6?g_st=iw',
    ),
    Location(
      name: 'Buenos Aires, Argentina',
      address: """Casa Rosada 
- Balcarce 50, C1060 Buenos Aires, Argentina""",
      mapsUrl: 'https://maps.app.goo.gl/u1nX3qZ1Yn2hhEQW7?g_st=iw',
    ),
    Location(
      name: 'Sydney, Australia',
      address: """Sydney Opera House 
- Bennelong Point, Sydney NSW 2000, Australia""",
      mapsUrl: 'https://maps.app.goo.gl/gALnobFTS1pyD3NW6?g_st=iw',
    ),
    Location(
      name: 'Mexico City, Mexico',
      address: """Zócalo Square 
- Plaza de la Constitución S/N, Centro Histórico, Cuauhtémoc, 06010 Ciudad de México, CDMX, Mexico""",
      mapsUrl: 'https://maps.app.goo.gl/z73MaT9UVgqiCeLNA?g_st=iw',
    ),
    Location(
      name: 'SingaporeSingapore',
      address: """Gardens by the Bay 
- 18 Marina Gardens Dr, Singapore 018953""",
      mapsUrl: 'https://maps.app.goo.gl/etAbjjYzm6JKQ5yq9?g_st=iw',
    ),
    Location(
      name: 'Berlin, Germany',
      address: """Brandenburg Gate 
- Pariser Platz, 10117 Berlin, Germany""",
      mapsUrl: 'https://maps.app.goo.gl/LeWee9DryNr9Hgq56?g_st=iw',
    ),
    Location(
      name: 'Johannesburg, South Africa',
      address: """Constitution Hill 
- 11 Kotze St, Braamfontein, Johannesburg, 2017, South Africa""",
      mapsUrl: 'https://maps.app.goo.gl/4egFqWXKUrBiabXz6?g_st=iw',
    ),
    Location(
      name: 'Mumbai, India',
      address: """Gateway of India 
- Apollo Bandar, Colaba, Mumbai, Maharashtra 400001, India""",
      mapsUrl: 'https://maps.app.goo.gl/VHeKz94iPni5v2UX6?g_st=iw',
    ),
    Location(
      name: 'Hong Kong, China',
      address: """Victoria Peak 
- The Peak, Hong Kong""",
      mapsUrl: 'https://maps.app.goo.gl/WfcY8JjCusLDnRne8?g_st=iw',
    ),
    Location(
      name: 'San Francisco, USA',
      address: """Golden Gate Bridge 
- Golden Gate Bridge, San Francisco, CA 94129, USA""",
      mapsUrl: 'https://maps.app.goo.gl/ACCv3GMhDi6tJfZw6?g_st=iw',
    ),
    Location(
      name: 'Toronto, Canada',
      address: """CN Tower 
- 301 Front St W, Toronto, ON M5V 2T6, Canada""",
      mapsUrl: 'https://maps.app.goo.gl/LdiBjwqmrSx1Koz86?g_st=iw',
    ),
    Location(
      name: 'Sao Paulo, Brazil',
      address: """Ibirapuera Park 
- Av. Pedro Álvares Cabral - Vila Mariana, São Paulo - SP, 04094-050, Brazil""",
      mapsUrl: 'https://maps.app.goo.gl/Q3mNVqJTtSd31Gj46?g_st=iw',
    ),
    Location(
      name: 'Kuala Lumpur, Malaysia',
      address: """Petronas Towers
 - Kuala Lumpur City Centre, 50088 Kuala Lumpur, Malaysia""",
      mapsUrl: 'https://maps.app.goo.gl/SDQ56veSiHQSL3Mb7?g_st=iw',
    ),
    Location(
      name: 'Amsterdam, Netherlands',
      address: """Anne Frank House 
- Prinsengracht 263-267, 1016 GV Amsterdam, Netherlands""",
      mapsUrl: 'https://maps.app.goo.gl/D1hLketoZU2psrnB8?g_st=iw',
    ),
    Location(
      name: 'Madrid, Spain',
      address: """Retiro Park 
- Plaza de la Independencia, 7, 28001 Madrid, Spain""",
      mapsUrl: 'https://maps.app.goo.gl/fCEx78vH2cgCba177?g_st=iw',
    ),
    Location(
      name: 'Chicago, USA',
      address: """Millennium Park 
- 201 E Randolph St, Chicago, IL 60602, USA""",
      mapsUrl: 'https://maps.app.goo.gl/7wrsxeGTqyWTcJ1r7?g_st=iw',
    ),
    Location(
      name: 'Kuala Lumpur, Malezya',
      address: """Grand Palace 
- Na Phra Lan Rd, Sanam Luang, Phra Nakhon, Bangkok 10200, Thailand""",
      mapsUrl: 'https://maps.app.goo.gl/Xfd2TSDFAixvYSdr9?g_st=iw ',
    ),

  ];
  List<Location> filteredLocations = [];

  @override
  void initState() {
    super.initState();
    filteredLocations = allLocations;
    _searchController.addListener(_searchLocation);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _searchLocation() {
    String searchTerm = _searchController.text;
    if (searchTerm.isEmpty) {
      setState(() {
        filteredLocations = allLocations;
      });
    } else {
      setState(() {
        filteredLocations = allLocations
            .where((location) =>
        location.name.toLowerCase().contains(searchTerm.toLowerCase()) ||
            location.address.toLowerCase().contains(searchTerm.toLowerCase()))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location List',
            style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold
            ),
        ),
        backgroundColor: Color(0xFF388E3C),
        iconTheme: IconThemeData(color: Colors.white),
        actionsIconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 13,horizontal: 15),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Search location...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredLocations.length,
              itemBuilder: (context, index) {
                var location = filteredLocations[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 7,horizontal: 15),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          location.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          location.address,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.map),
                      onPressed: () => _launchMapsUrl(location.mapsUrl),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchMapsUrl(String mapsUrl) async {
    final url = Uri.parse(mapsUrl);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('This address cannot be opened: $mapsUrl'),
        ),
      );
    }
  }

}
