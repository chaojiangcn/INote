//
//  NoteListView.swift
//  INote
//
//  Created by 周朝江 on 2022/10/10.
//

import SwiftUI

struct NoteListView: View {
    
    @EnvironmentObject var noteItems: IndexViewModel
    
    var body: some View {
        List {
            ForEach(noteItems.noteModels) { noteItem in
                NoteListRowView(noteItem: noteItem)
            }
        }
        .listStyle(InsetListStyle())
    }
}
