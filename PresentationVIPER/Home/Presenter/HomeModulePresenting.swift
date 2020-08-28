// Copyright © Delivery Hero SE. All rights reserved.

protocol HomeModulePresenting {
  func onViewDidLoad()
  func fetchCityList()
  func showCityDetails(withIndex index: Int)
}
