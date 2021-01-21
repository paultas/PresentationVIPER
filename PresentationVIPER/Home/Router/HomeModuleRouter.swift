// Copyright © Delivery Hero SE. All rights reserved.

import UIKit

final class HomeModuleRouter {
  weak var viewController: UIViewController?
}

// MARK: - HomeModuleRouting

extension HomeModuleRouter: HomeModuleRouting {
  func showDetails() {
    print("Show city details screen")
  }
}
