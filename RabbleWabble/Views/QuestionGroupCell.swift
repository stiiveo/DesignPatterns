//
//  QuestionGroupCell.swift
//  RabbleWabble
//
//  Created by Jason Ou on 2022/11/26.
//

import UIKit
import Combine

public class QuestionGroupCell: UITableViewCell {
	@IBOutlet public var titleLabel: UILabel!
	@IBOutlet public var percentageLabel: UILabel!
	
	public var percentageSubscriber: AnyCancellable?

}

