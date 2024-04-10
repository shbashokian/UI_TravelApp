class TravelModel {
  String name;
  String location;
  String image;
  String price;
  String rating;
  String description;
  String temp;
  String distance;

  TravelModel({
    required this.name,
    required this.location,
    required this.image,
    required this.price,
    required this.rating,
    required this.description,
    required this.temp,
    required this.distance,
  });
}

List<TravelModel> travelList = [
  TravelModel(name: "New York", location: "United State", image: "assets/images/newyork.jpg", price: "2500 \$", rating: "5", description: "New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park. Broadway theater is staged in neon-lit Times Square.", temp: "25 ", distance: "18 Km"),
  TravelModel(name: "Rome", location: "Italy", image: "assets/images/rome.png", price: "1400 \$", rating: "4.6", description: "Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome Capital, and a special comune named Comune di Roma Capitale.", temp: "19", distance: "19 Km"),
  TravelModel(name: "Paris", location: "France", image: "assets/images/paris.jpg", price: "1200 \$", rating: "4.3", description: "Paris, France's capital, is a major European city and a global center for art, fashion, gastronomy and culture. Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine. Beyond such landmarks as the Eiffel Tower and the 12th-century, Gothic Notre-Dame cathedral, the city is known for its cafe culture and designer boutiques along the Rue du Faubourg Saint-Honoré.", temp: "22", distance: "201 Km"),
  TravelModel(name: "Lofoten", location: "Norway", image: "assets/images/norway.jpg", price: "3000 \$", rating: "4.4", description: "Lofoten is an archipelago in Norway. Its known for its dramatic scenery, with peaks like the Svolværgeita pinnacle jutting up into the sky. Himmeltindan Mountain sits on Vestvågøya Island. The nearby Lofotr Viking Museum features a Viking longhouse reconstruction. Cycle routes cover the islands, passing through fishing villages like Henningsvær, which has colorful buildings lining its waterways.", temp: "-3", distance: "180 Km"),
];
