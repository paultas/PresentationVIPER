// Copyright © Delivery Hero SE. All rights reserved.

final class HomeModuleInteractor {
  let cityRepository: CityRepository
  let locationProvider: LocationProvider

  init(
    cityRepository: CityRepository,
    locationProvider: LocationProvider
  ) {
    self.cityRepository = cityRepository
    self.locationProvider = locationProvider
  }
}

// MARK: - HomeModuleInteracting

extension HomeModuleInteractor: HomeModuleInteracting {
  func fetchCityList(
    success: (_ cities: [City]) -> Void,
    failure: (_ error: Error) -> Void
  ) {
    locationProvider.currentLocation { [cityRepository] location in
      cityRepository.fetchCities(
        by: location,
        success: success,
        failure: failure
      )
    }
  }
}
