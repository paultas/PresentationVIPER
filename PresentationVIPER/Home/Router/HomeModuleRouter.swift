// Copyright © Delivery Hero SE. All rights reserved.

import UIKit

final class HomeModuleRouter {
  weak var viewController: UIViewController?

  static var homeViewController: UIViewController {
    let cityRepository = CityRepository()
    let locationProvider = LocationProvider()

    let router = HomeModuleRouter()
    let interactor = HomeModuleInteractor(
      cityRepository: cityRepository,
      locationProvider: locationProvider
    )

    let presenter = HomeModulePresenter(
      interactor: interactor,
      router: router
    )

    let view = HomeModuleViewController(presenter: presenter)

    presenter.view = view
    router.viewController = view

    return view
  }
}

// MARK: - HomeModuleRouting

extension HomeModuleRouter: HomeModuleRouting {
  func showDetails() {
    print("Show city details screen")
  }
}
