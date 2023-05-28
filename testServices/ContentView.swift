//
//  ContentView.swift
//  testServices
//
//  Created by Luiz Camargo on 28/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Test services")
            .font(.largeTitle)
            .foregroundColor(.black)
        NavigationView {
            
            VStack(spacing: 10) {
                
                Image(systemName: "pc")
                    .resizable()
                    .foregroundColor(.red)
                    .frame(width: 100, height: 100)
                    .shadow(radius: 4)
                
                
                List {
                    Group {
                        //                        NavigationLink(destination: GPSView() ) {
                        //                            VStack(alignment: .leading, spacing: 20 ) {
                        //                                  HStack {
                        //                                      Text("GPS").font(.subheadline)
                        //                                      Spacer()
                        //                                      Text("Test").font(.subheadline)
                        //                                  }
                        //                            }
                        //                        }
                        
                        
                    } // group
                }
                .listStyle(.plain)
                
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
