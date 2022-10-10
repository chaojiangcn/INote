//
//  ArticleModel.swift
//  INote
//
//  Created by 周朝江 on 2022/10/10.
//

import Foundation
import SwiftUI

class ArticleModel: ObservableObject, Identifiable {
    var id = UUID()
    @Published var writeTime:String = ""
    @Published var title:String = ""
    @Published var content:String = ""
    
    //实例化
    init(id: UUID = UUID(), writeTime: String, title: String, content: String) {
        self.id = id
        self.writeTime = writeTime
        self.title = title
        self.content = content
    }

}
