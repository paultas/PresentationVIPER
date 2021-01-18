// Copyright © Delivery Hero SE. All rights reserved.

final class HomeModulePresenter {
  weak var view: HomeModuleView?
  private let interactor: HomeModuleInteracting
  private let router: HomeModuleRouting
  private let mapper: CityViewModelMapping

  init(
    interactor: HomeModuleInteracting,
    router: HomeModuleRouting,
    mapper: CityViewModelMapping
  ) {
    self.interactor = interactor
    self.router = router
    self.mapper = mapper
  }
}

// MARK: - 

extension HomeModulePresenter: HomeModulePresenting {
  func onViewDidLoad() {}

  func onDidTapRefresh() {
    interactor.fetchCityList(
      success: { [weak view] cities in
        let cityViewModels = cities.map { self.mapper.viewModel(from: $0) }
        view?.update(cities: cityViewModels)
      },
      failure: { [weak view] _ in
        view?.showError()
      }
    )
  }

  func onDidSelectCity(withIndex index: Int) {
    router.showDetails()
  }
}
