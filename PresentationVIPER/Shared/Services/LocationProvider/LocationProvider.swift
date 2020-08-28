// Copyright © Delivery Hero SE. All rights reserved.

import Foundation

struct LocationProvider: LocationProviding {
  func currentLocation(completion: (_ location: Location) -> Void) {
    completion(
      Location(id: 1)
    )
  }
}
