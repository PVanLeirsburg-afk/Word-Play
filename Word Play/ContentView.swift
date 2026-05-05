//
//  ContentView.swift
//  Word Play
//
//  Created by Pamela VanLeirsburg on 5/5/26.
// Try this
//Try this again
// I made this comment ;)
//try one more time

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please enter the requested words below")
                HStack {
                    CustomTextField(placeholder: "Adjective", variable:$words.adjective)
                    CustomTextField(placeholder: "Person's Name", variable: $words.personsName)
                    CustomTextField(placeholder: "Country", variable:$words.country)
                }
            
                HStack {
                    CustomTextField(placeholder: "Kingdom Name", variable: $words.kingdomName)
                    CustomTextField(placeholder: "Plural Noun", variable:$words.pluralNoun)
                    CustomTextField(placeholder: "verb", variable: $words.verb)
                }
                
                HStack {
                    CustomTextField(placeholder: "Plural Verb", variable:$words.pluralVerb)
                    CustomTextField(placeholder: "Color", variable: $words.color)
                    CustomTextField(placeholder: "Noun", variable: $words.noun)
                }
                Spacer()
                NavigationLink("Next", destination:StoryView(words: words))
            }
        }
        .navigationTitle("Word Play")
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
    var noun = ""
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
