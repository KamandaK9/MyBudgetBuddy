//
//  TransactionModel.swift
//  MyBudgetBuddy
//
//  Created by Daniel Senga on 2022/12/14.
//

import Foundation
import SwiftUIFontIcon

struct Transaction: Identifiable, Decodable, Hashable {
	
	let id: Int
	let date: String
	let institution: String
	let account: String
	var merchant: String
	let amount: Double
	let type: TransactionType.RawValue
	var categoryId: Int
	var category: String
	let isPending: Bool
	var isTransfer: Bool
	var isExpense: Bool
	var isEdited: Bool
	
	var dateParsed: Date {
		date.dateParsed()
	}
	
	var signedAmount: Double {
		return type == TransactionType.credit.rawValue ? amount: -amount
	}
	
	var icon: FontAwesomeCode {
		if let category = Category.all.first(where: { $0.id == categoryId}) {
			return category.icon
		}
		
		return .question
	}
	
	var month: String {
		dateParsed.formatted(.dateTime.year().month(.wide))
	}
	
	var categoryItem: Category {
		if let category = Category.all.first(where: { $0.id == categoryId}) {
			return category
		}
		
		return .shopping
	}
	
	
	
}

enum TransactionType: String {
	case debit = "debit"
	case credit = "credit"
}

struct Category: Identifiable {
	
	let id: Int
	let name: String
	let icon: FontAwesomeCode
	var mainCategoryId: Int?
	
	var subcategories: [Category]? {
		Category.subCategories.filter { $0.mainCategoryId == id }
	}
}


