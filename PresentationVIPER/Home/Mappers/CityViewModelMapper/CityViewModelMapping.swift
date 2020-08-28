// Copyright © Delivery Hero SE. All rights reserved.

import Foundation

protocol CityViewModelMapping {
  func viewModel(from city: City) -> CityViewModel
}
