//
//  SequentialQuestionStrategy.swift
//  RabbleWabble
//
//  Created by Jason Ou on 2022/11/26.
//

public class SequentialQuestionStrategy: BaseQuestionStrategy {
	
	public convenience init(
		questionGroupCaretaker: QuestionGroupCaretaker) {
			let questionGroup =
			questionGroupCaretaker.selectedQuestionGroup!
			let questions = questionGroup.questions
			self.init(questionGroupCaretaker: questionGroupCaretaker,
					  questions: questions)
		}
}
