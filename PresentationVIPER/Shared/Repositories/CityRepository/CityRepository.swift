// Copyright © Delivery Hero SE. All rights reserved.

import Foundation

class CityRepository: CityRepositoryProtocol {
  func fetchCities(
    by location: Location,
    success: (_ cities: [City]) -> Void,
    failure: (_ error: Error) -> Void
  ) {
    var cities: [City] = [
      City(
        name: "Singapore",
        description: """
        Singapore is a sovereign island city-state in maritime Southeast Asia. It lies about one degree of latitude (137 kilometres or 85 miles) north of the equator, off the southern tip of the Malay Peninsula, bordering the Straits of Malacca to the west, the Riau Islands to the south, and the South China Sea to the east. The country's territory is composed of one main island, 63 satellite islands and islets, and one outlying islet, the combined area of which has increased by 25% since the country's independence as a result of extensive land reclamation projects. It has the second greatest population density in the world. The country is home to almost 5.7 million residents, 61% (3.4 million) of whom are Singaporean citizens. There are four official languages of Singapore: English, Malay, Chinese, and Tamil; with English being the lingua franca. This reflects in its rich cultural diversity and extensive ethnic cuisine and major festivals. Multiracialism is enshrined in the constitution, and continues to shape national policies in education, housing, and politics.
        """
      ),
      City(
        name: "Los Angeles",
        description: """
        Los Angeles is the largest city in California. With an estimated population of nearly four million people,[17] it is the second-most populous city in the United States (after New York City) and the third-most populous city in North America (after Mexico City and New York City). Los Angeles is known for its Mediterranean climate, ethnic diversity, Hollywood entertainment industry, and its sprawling metropolis.
        """
      ),
      City(
        name: "San Francisco",
        description: """
        San Francisco, officially the City and County of San Francisco and colloquially known as The City, SF, or Frisco and San Fran,[20][21] is the cultural, commercial, and financial center of Northern California. San Francisco is the 16th most populous city in the United States, and the fourth most populous in California, with 881,549 residents as of 2019.[10] It covers an area of about 46.89 square miles (121.4 km2),[22] mostly at the north end of the San Francisco Peninsula in the San Francisco Bay Area, making it the second most densely populated large U.S. city, and the fifth most densely populated U.S. county, behind only four of the five New York City boroughs. San Francisco is the 12th-largest metropolitan statistical area in the United States by population, with 4.7 million people, and the fourth-largest by economic output, with GDP of $549 billion in 2018.
        """
      ),
      City(
        name: "Manila",
        description: """
        Manila is the capital of the Philippines and a highly urbanized city. It is the most densely populated city proper in the world as of 2019.[12] It was the first chartered city by virtue of the Philippine Commission Act 183 on July 31, 1901 and gained autonomy with the passage of Republic Act No. 409 or the "Revised Charter of the City of Manila" on June 18, 1949.[13] Manila, alongside Mexico City and Madrid are considered the world's original set of Global Cities due to Manila's commercial networks being the first to traverse the Pacific Ocean, thus connecting Asia with the Spanish Americas, marking the first time in world history when an uninterrupted chain of trade routes circled the planet.[14] Manila is also the second most natural disaster-afflicted capital city in the world next to Tokyo,[15] yet it is simultaneously among the most populous and fastest growing cities in Southeast Asia.
        """
      ),
      City(
        name: "Delhi",
        description: """
        Delhi is a city and a union territory of India containing New Delhi, the capital of India.[14][15] It is bordered by the state of Haryana on three sides and by Uttar Pradesh to the east. The NCT covers an area of 1,484 square kilometres (573 sq mi). According to the 2011 census, Delhi's city proper population was over 11 million,[5] the second-highest in India after Mumbai,[16] while the whole NCT's population was about 16.8 million.[6] Delhi's urban area is now considered to extend beyond the NCT boundaries, and include the neighbouring satellite cities of Ghaziabad, Faridabad, Gurgaon and Noida in an area called the National Capital Region (NCR) and had an estimated 2016 population of over 26 million people, making it the world's second-largest urban area according to the United Nations.[7]
        """
      ),
    ]
    cities.shuffle()
    success(cities)
  }
}
