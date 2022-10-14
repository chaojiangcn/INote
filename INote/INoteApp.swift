//
//  INoteApp.swift
//  INote
//
//  Created by 周朝江 on 2022/10/10.
//

import SwiftUI

@main
struct INoteApp: App {
    @StateObject var noteItemsVM: IndexViewModel = IndexViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(noteItemsVM)
        }
    }
}
