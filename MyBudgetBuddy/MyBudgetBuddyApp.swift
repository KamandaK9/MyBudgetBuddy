//
//  MyBudgetBuddyApp.swift
//  MyBudgetBuddy
//
//  Created by Daniel Senga on 2022/12/14.
//

import SwiftUI

@main
struct MyBudgetBuddyApp: App {
    let persistenceController = PersistenceController.shared
	@StateObject var transactionListVM = TransactionListViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(transactionListVM)
        }
    }
}
