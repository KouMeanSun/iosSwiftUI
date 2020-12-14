//
//  ListRow.swift
//  MySwiftUIDemo
//
//  Created by 高明阳 on 2020/12/12.
//  Copyright © 2020 高明阳. All rights reserved.
//


import SwiftUI

struct ListRow: View {
    var symbol: String
    var body: some View {
        NavigationLink(destination: ListDetail(symbol: symbol)) {
            
            HStack {
                //图片
                Image(systemName: symbol)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Colors.randomElement())
                //分割
                Divider()
                Spacer()
                //文字
                Text(symbol)
                Spacer()
            }
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(symbol: "chevron.up")
    }
}
