//
//  ContentView.swift
//  Word Play
//
//  Created by Pamela VanLeirsburg on 5/5/26.
// Try this
//Try this again
// I made this comment ;)

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct Words {
    var adjective = ""
    var personsName = ""
    var country = ""
    var kingdomName = ""
    var pluralNoun = ""
    var verb = ""
    var pluralVerb = ""
    var color = ""
}

struct CustomTextField:  View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
