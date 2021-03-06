// Copyright © Delivery Hero SE. All rights reserved.

import UIKit

final class HomeModuleViewController: UIViewController {
  private enum Constants {
    static let cellIdentifier = "homeCellIdentifier"
  }

  private let presenter: HomeModulePresenting

  @IBOutlet private var tableView: UITableView!

  private var cities: [CityViewModel] = []

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  init(presenter: HomeModulePresenter) {
    self.presenter = presenter
    super.init(
      nibName: String(describing: type(of: self)),
      bundle: Bundle(for: type(of: self))
    )
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    presenter.onViewDidLoad()
  }
}

// MARK: - Actions

extension HomeModuleViewController {
  @IBAction private func refreshButtonTapped() {
    presenter.onDidTapRefresh()
  }
}

// MARK: - HomeModuleView

extension HomeModuleViewController: HomeModuleView {
  func update(cities: [CityViewModel]) {
    self.cities = cities
    tableView.reloadData()
  }

  func showError() {}
}

// MARK: - UITableViewDataSource

extension HomeModuleViewController: UITableViewDataSource {
  func tableView(
    _ tableView: UITableView,
    numberOfRowsInSection section: Int
  ) -> Int {
    cities.count
  }

  func tableView(
    _ tableView: UITableView,
    cellForRowAt indexPath: IndexPath
  ) -> UITableViewCell {
    let cell: UITableViewCell
    if let dequeuedCell = tableView
      .dequeueReusableCell(withIdentifier: Constants.cellIdentifier) {
      cell = dequeuedCell
    } else {
      cell = UITableViewCell(
        style: .subtitle,
        reuseIdentifier: Constants.cellIdentifier
      )
      cell.detailTextLabel?.numberOfLines = 0
      cell.detailTextLabel?.lineBreakMode = .byWordWrapping
    }
    let city = cities[indexPath.row]
    cell.textLabel?.text = city.name
    cell.detailTextLabel?.text = city.description

    return cell
  }
}

// MARK: - UITableViewDelegate

extension HomeModuleViewController: UITableViewDelegate {
  func tableView(
    _ tableView: UITableView,
    didSelectRowAt indexPath: IndexPath
  ) {
    presenter.onDidSelectCity(withIndex: indexPath.row)
  }
}
