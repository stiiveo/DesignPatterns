//
//  RandomQuestionStrategy.swift
//  RabbleWabble
//
//  Created by Jason Ou on 2022/11/26.
//

import GameplayKit.GKRandomSource

public class RandomQuestionStrategy: BaseQuestionStrategy {
	
	public convenience init(
		questionGroupCaretaker: QuestionGroupCaretaker) {
			let questionGroup =
			questionGroupCaretaker.selectedQuestionGroup!
			let randomSource = GKRandomSource.sharedRandom()
			let questions = randomSource.arrayByShufflingObjects(
				in: questionGroup.questions) as! [Question]
			self.init(questionGroupCaretaker: questionGroupCaretaker,
					  questions: questions)
		}
}
