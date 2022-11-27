//
//  AppSettingsViewController.swift
//  RabbleWabble
//
//  Created by Jason Ou on 2022/11/27.
//

import UIKit

// 1
public class AppSettingsViewController: UITableViewController {
	// 2
	// MARK: - Properties
	public let appSettings = AppSettings.shared
	private let cellIdentifier = "basicCell"
	
	// MARK: - View Life Cycle
	public override func viewDidLoad() {
		super.viewDidLoad()
		
		// 3
		tableView.tableFooterView = UIView()
		
		// 4
		tableView.register(UITableViewCell.self,
						   forCellReuseIdentifier: cellIdentifier)
	}
}

// MARK: - UITableViewDataSource
extension AppSettingsViewController {
	
	public override func tableView(
		_ tableView: UITableView,
		numberOfRowsInSection section: Int) -> Int {
			
			// 1
			return QuestionStrategyType.allCases.count
		}
	
	public override func tableView(
		_ tableView: UITableView,
		cellForRowAt indexPath: IndexPath) -> UITableViewCell {
			
			let cell = tableView.dequeueReusableCell(
				withIdentifier: cellIdentifier, for: indexPath)
			
			// 2
			let questionStrategyType =
			QuestionStrategyType.allCases[indexPath.row]
			
			// 3
			cell.textLabel?.text = questionStrategyType.title()
			
			// 4
			if appSettings.questionStrategyType ==
				questionStrategyType {
				cell.accessoryType = .checkmark
			} else {
				cell.accessoryType = .none
			}
			return cell
		}
}

// MARK: - UITableViewDelegate
extension AppSettingsViewController {
	public override func tableView(
		_ tableView: UITableView,
		didSelectRowAt indexPath: IndexPath) {
			
			let questionStrategyType =
			QuestionStrategyType.allCases[indexPath.row]
			appSettings.questionStrategyType = questionStrategyType
			tableView.reloadData()
		}
}
