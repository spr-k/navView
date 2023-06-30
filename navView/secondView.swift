//
//  secondView.swift
//  navView
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct secondView: View {
    @State private var change = "xxx"
    var body: some View {
        NavigationStack {
            
            VStack {
                Spacer()
                Text("Are you a cat or dog person?")
                    .font(.title2)
                    .fontWeight(.thin)
                
                Button("Cat") {
                    change = "kitty!"
                }
                .padding(.top, 30)
                .buttonStyle(.borderedProminent)
                
                Button("Dog") {
                    change = "ouppy!"
                }
                .padding(30)
                .buttonStyle(.borderedProminent)
                
                Text(change)
                    .font(.title3)
                    .fontWeight(.thin)
                
                Spacer()
            }
            
            .toolbar() {
                NavigationLink(destination: thirdView()) {
                    Text("Move on -->")
                        .fontWeight(.light)
                }

            }
        }
    }
}

struct secondView_Previews: PreviewProvider {
    static var previews: some View {
        secondView()
    }
}
