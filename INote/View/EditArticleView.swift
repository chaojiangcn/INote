//
//  EditArticleView.swift
//  INote
//
//  Created by 周朝江 on 2022/10/11.
//

import SwiftUI

struct EditArticleView: View {
    @State private var content: String = "内容"
    @State private var title:String = ""
    
    @EnvironmentObject var IndexVM: IndexViewModel
    //确保试图展示
    @Environment(\.isPresented) var isPresented
    //返回上一页
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ZStack(){
                VStack(alignment: .leading, spacing: 5){
                    TextField("请输入文章标题", text: $title)
                    TextEditor(text: $content)
                        .foregroundColor(Color.gray)
                        .font(.custom("HelveticaNeue", size: 16))
                }.padding(.horizontal, 10)
            }
            .toolbarRole(.editor)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "scribble.variable")
                    }
                }
                ToolbarItem(placement:.navigationBarTrailing) {
                    Button(action: {
                        if isPresented {
                            IndexVM.addArticle(writeTime: "2022-10-17", title: title, content: content)
                            dismiss()
                        } else {
                            print("返回错误")
                        }
                        
                    }, label: {
                        Text("Done")
                    })
                }
                ToolbarItem(placement: ToolbarItemPlacement.bottomBar) {
                    Button(action: {

                    }, label: {
                        Image(systemName: "lock.doc.fill")
                    })
                }
            }
        }
        
        
        
    }
}

struct EditArticleView_Previews: PreviewProvider {
    static var previews: some View {
        EditArticleView()
    }
}
