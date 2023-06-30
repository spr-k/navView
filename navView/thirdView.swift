//
//  thirdView.swift
//  navView
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct thirdView: View {
    @State private var change = "xxx"
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Do you prefer rings or necklaces?")
                .font(.title2)
                .fontWeight(.thin)
            
            Button("Rings"){
                change = "fingers"
            }
            .padding(.top, 30)
            .buttonStyle(.borderedProminent)
            
            Button("Nacklaces") {
                change = "neck"
            }
            .padding(30)
            .buttonStyle(.borderedProminent)
            
            Text(change)
                .font(.title3)
                .fontWeight(.thin)
            
            Spacer()
        }
    }
}

struct thirdView_Previews: PreviewProvider {
    static var previews: some View {
        thirdView()
    }
}
