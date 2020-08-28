// Copyright © Delivery Hero SE. All rights reserved.

import Foundation

struct CityViewModelMapper: CityViewModelMapping {
  func viewModel(from city: City) -> CityViewModel {
    CityViewModel(
      name: city.name,
      description: city.description
    )
  }
}
