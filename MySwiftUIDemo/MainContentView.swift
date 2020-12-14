//
//  MainContentView.swift
//  MySwiftUIDemo
//
//  Created by 高明阳 on 2020/12/12.
//  Copyright © 2020 高明阳. All rights reserved.
//

import SwiftUI

struct MainContentView:View{
    var dataSource = ["MainPageList"]
    var body: some View{
        NavigationView{
//            VStack {
//                NavigationLink(destination:ContentView()){
//                    Text("MainPageList")
//                }
//                Spacer()
//            }
            List(dataSource,id:\.self){item  in
//                ListRow(symbol: $0)
//                Text("1111")
                MainPageCell(data: item)
            }
        }
    }
}


struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
