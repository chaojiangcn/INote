//
//  IndexViewModel.swift
//  INote
//
//  Created by 周朝江 on 2022/10/14.
//

import Foundation
import Combine
import SwiftUI

class IndexViewModel: ObservableObject {
    //数据模型
    @Published var noteModels:[ArticleModel] = [ArticleModel(writeTime: "2022.09.17", title: "第一条笔记", content: "快来使用念头笔记记录生活吧～快来使用念头笔记记录生活吧～"),ArticleModel(writeTime: "2022.09.17", title: "第一条笔记", content: "快来使用念头笔记记录生活吧～快来使用念头笔记记录生活吧～")]
    //笔记参数
    @Published var writeTime:String = ""
    @Published var title:String = ""
    @Published var content:String = ""
    
    init() {
    }
    
    func addArticle(writeTime:String,title:String,content:String) {
        let temp = ArticleModel(writeTime: writeTime, title: title, content: content)
        noteModels.append(temp)
    }
}
