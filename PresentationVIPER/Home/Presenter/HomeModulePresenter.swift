// Copyright © Delivery Hero SE. All rights reserved.

final class HomeModulePresenter {
  weak var view: HomeModuleViewController?
  private let interactor: HomeModuleInteracting
  private let router: HomeModuleRouting

  init(
    interactor: HomeModuleInteracting,
    router: HomeModuleRouting
  ) {
    self.interactor = interactor
    self.router = router
  }
}

// MARK: - HomeModulePresenting

extension HomeModulePresenter: HomeModulePresenting {
  func onViewDidLoad() {}

  func fetchCityList() {
    interactor.fetchCityList(
      success: { [weak view] cities in
        view?.update(cities: cities)
      },
      failure: { [weak view] _ in
        view?.showError()
      }
    )
  }

  func showCityDetails(withIndex index: Int) {
    router.showDetails()
  }
}
