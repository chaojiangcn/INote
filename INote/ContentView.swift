//
//  ContentView.swift
//  INote
//
//  Created by 周朝江 on 2022/10/10.
//

import SwiftUI

struct ContentView: View {
    @State var searchText = ""
    @EnvironmentObject var noteItemsVM: IndexViewModel
    
    var body: some View {
        NavigationStack {
            ZStack(){
                if noteItemsVM.noteModels.count == 0 {
                    NoDataView()
                } else {
                    VStack{
                        searchBarView()
                        NoteListView()
                    }
                }
                
                newBtnView()
            }
            .navigationTitle("首页")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
    
    // 新建笔记按钮
    func newBtnView() -> some View {
        VStack {
            Spacer()
            HStack{
                Spacer()
                Button(action:{
                    
                }){
                    NavigationLink(destination: EditArticleView()) {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 48))
                            .foregroundColor(.blue)
                    }
                    
                    
                }
            }
        }
        .padding(.bottom, 32)
        .padding(.trailing, 32)
    }
    
    // MARK: 搜索
    func searchBarView() -> some View {
        HStack{
            TextField("搜索内容", text: $searchText)
                .padding(7)
                .padding(.horizontal,25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        // 编辑时显示清除按钮
                        if searchText != "" {
                            Button(action: {
                                self.searchText = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
        }.padding(.horizontal, 10)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
