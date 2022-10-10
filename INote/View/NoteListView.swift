//
//  NoteListView.swift
//  INote
//
//  Created by 周朝江 on 2022/10/10.
//

import SwiftUI

struct NoteListView: View {
    @Binding var noteItems:[ArticleModel]
    
    var body: some View {
        List {
            ForEach(noteItems) { noteItem in
                NoteListRowView(noteItem: noteItem)
            }
        }
        .listStyle(InsetListStyle())
    }
}
