// Copyright © Delivery Hero SE. All rights reserved.

protocol HomeModuleView: AnyObject {
  func update(cities: [City])
  func showError()
}
