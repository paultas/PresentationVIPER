// Copyright © Delivery Hero SE. All rights reserved.

final class HomeModulePresenter {
  weak var view: HomeModuleViewController?
  private let interactor: HomeModuleInteractor
  private let router: HomeModuleRouter

  init(
    interactor: HomeModuleInteractor,
    router: HomeModuleRouter
  ) {
    self.interactor = interactor
    self.router = router
  }
}

// MARK: - 

extension HomeModulePresenter {
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
