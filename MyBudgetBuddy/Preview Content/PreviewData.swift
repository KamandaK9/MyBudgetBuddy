//
//  PreviewData.swift
//  MyBudgetBuddy
//
//  Created by Daniel Senga on 2022/12/14.
//

import Foundation

var transactionPreviewData = Transaction(id: 1, date: "31/01/2021", institution: "FNB", account: "Easy Account", merchant: "SportsScene", amount: 1500.99, type: "debit", categoryId: 801, category: "Fashion", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
