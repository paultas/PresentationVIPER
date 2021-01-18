// Copyright © Delivery Hero SE. All rights reserved.

protocol HomeModuleInteracting {
  func fetchCityList(
    success: (_ cities: [City]) -> Void,
    failure: (_ error: Error) -> Void
  )
}
