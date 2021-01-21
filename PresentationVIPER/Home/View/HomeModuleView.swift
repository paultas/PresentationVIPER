// Copyright © Delivery Hero SE. All rights reserved.

protocol HomeModuleView: AnyObject {
  func update(cities: [CityViewModel])
  func showError() 
}
