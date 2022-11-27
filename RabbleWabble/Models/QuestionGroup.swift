//
//  QuestionGroup.swift
//  RabbleWabble
//
//  Created by Jason Ou on 2022/11/26.
//

import Foundation

public class QuestionGroup: Codable {
	
	public class Score: Codable {
		public var correctCount: Int = 0
		public var incorrectCount: Int = 0
		public init() { }
	}

	public let questions: [Question]
	public var score: Score

	public let title: String
	
	public init(questions: [Question],
				score: Score = Score(),
				title: String) {
		self.questions = questions
		self.score = score
		self.title = title
	}

}
