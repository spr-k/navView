//
//  ContentView.swift
//  navView
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var change = "xxx"
    var body: some View {
        NavigationStack {
            
            VStack {
                Spacer()
                Text("Are you a morning or night person?")
                    .font(.title2)
                    .fontWeight(.thin)
                    
                Button("Morning") {
                    change = "early"
                }
                .padding(.top, 30)
                .buttonStyle(.borderedProminent)
                
                
                Button("Night") {
                    change = "late"
                }
                .padding(30)
                .buttonStyle(.borderedProminent)
                
                Text(change)
                    .font(.title2)
                    .fontWeight(.thin)
                
                Spacer()
                
            }
            
            .toolbar() {
                NavigationLink(destination: secondView()) {
                    Text("Next page -->")
                        .fontWeight(.light)
                }

            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
