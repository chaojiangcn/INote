//
//  EditArticleView.swift
//  INote
//
//  Created by 周朝江 on 2022/10/11.
//

import SwiftUI

struct EditArticleView: View {
    @State private var content: String = "This is some editable text..."
    @State private var title:String = ""
    
    var body: some View {
        NavigationView {
            ZStack(){
                VStack(alignment: .leading, spacing: 5){
                    TextField("请输入文章标题", text: $title)
                    TextEditor(text: $content)
                }.padding(.horizontal, 10)
            }
        }
        
        
        
    }
}

struct EditArticleView_Previews: PreviewProvider {
    static var previews: some View {
        EditArticleView()
    }
}
