//
//  NoDataView.swift
//  INote
//
//  Created by 周朝江 on 2022/10/10.
//

import SwiftUI

struct NoDataView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Image("main_no_data")
                .resizable()
                .scaledToFit()
                .frame(width: 240)
            Text("记录这个世界的点滴")
                .font(.system(size: 17))
                .bold()
                .foregroundColor(.gray)
        }
    }
}

struct NoDataView_Previews: PreviewProvider {
    static var previews: some View {
        NoDataView()
    }
}
