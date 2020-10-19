//
//  ContentView.swift
//  ChildViewControllerExample
//
//  Created by Marcel Klínek on 19/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            PageViewController()
                .frame(height: 150)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
