//
//  ListDetail.swift
//  MySwiftUIDemo
//
//  Created by 高明阳 on 2020/12/12.
//  Copyright © 2020 高明阳. All rights reserved.
//

import SwiftUI

struct ListDetail: View {
    
    var symbol: String
    
    var body: some View {
        VStack {
            
            Text("Image:").font(.headline)
            
            Spacer()
            
            Image(systemName: symbol)
                .foregroundColor(Colors.randomElement())
                .imageScale(.large)
                .scaleEffect(3)
                .padding(.bottom, 100)
            
            Divider()
            
            Text("Image Name:").font(.headline)
            Spacer()
            Text(symbol)
                .font(.largeTitle)
            Spacer()
        }
        .navigationBarTitle(symbol)
    }
}

struct ListDetail_Previews: PreviewProvider {
    static var previews: some View {
        ListDetail(symbol: "chevron.up")
    }
}
