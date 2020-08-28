// Copyright © Delivery Hero SE. All rights reserved.

import Foundation

protocol CityRepositoryProtocol {
  func fetchCities(
    by location: Location,
    success: (_ cities: [City]) -> Void,
    failure: (_ error: Error) -> Void
  )
}
