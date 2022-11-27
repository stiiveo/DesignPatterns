//
//  Question.swift
//  RabbleWabble
//
//  Created by Jason Ou on 2022/11/26.
//

import Foundation

public class Question: Codable {
	public let answer: String
	public let hint: String?
	public let prompt: String
	
	public init(answer: String, hint: String?, prompt: String) {
		self.answer = answer
		self.hint = hint
		self.prompt = prompt
	}

}
