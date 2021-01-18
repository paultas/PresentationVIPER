// Copyright © Delivery Hero SE. All rights reserved.

import UIKit

struct HomeModuleBuilder {}

// MARK: - HomeModuleBuilding

extension HomeModuleBuilder: HomeModuleBuilding {
  func view() -> UIViewController {
    let cityRepository = CityRepository()
    let locationProvider = LocationProvider()

    let router = HomeModuleRouter()
    let interactor = HomeModuleInteractor(
      cityRepository: cityRepository,
      locationProvider: locationProvider
    )

    let presenter = HomeModulePresenter(
      interactor: interactor,
      router: router,
      mapper: CityViewModelMapper()
    )

    let view = HomeModuleViewController(presenter: presenter)

    presenter.view = view
    router.viewController = view

    return view
  }
}
