// Copyright © Delivery Hero SE. All rights reserved.

import Foundation

protocol LocationProviding {
  func currentLocation(completion: (_ location: Location) -> Void)
}
