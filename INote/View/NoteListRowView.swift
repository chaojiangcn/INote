//
//  NoteListRowVIew.swift
//  INote
//
//  Created by 周朝江 on 2022/10/10.
//

import SwiftUI

struct NoteListRowView: View {
    @ObservedObject var noteItem: ArticleModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(noteItem.writeTime)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                Text(noteItem.title)
                    .font(.system(size: 17))
                    .foregroundColor(.black)
                Text(noteItem.content)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .lineLimit(1)
                    .multilineTextAlignment(.leading)
            }
            Spacer()
            
            Button(action: {
                
            }) {
                Image(systemName: "ellipsis")
                    .foregroundColor(.gray)
                    .font(.system(size: 23))
            }
        }
    }
}
