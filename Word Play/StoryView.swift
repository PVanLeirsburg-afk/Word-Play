//
//  StoryView.swift
//  Word Play
//
//  Created by Pamela VanLeirsburg on 5/5/26.
//

import SwiftUI

struct StoryView: View {
    
    let words: Words
    var body: some View {
        Text(writeStory())
       
    }
    func writeStory() -> String {
        return "Once upon a time, there was a \(words.adjective) princess " +
        "named \(words.personsName). She was from \(words.country) and she lived in a" +
        " beautiful kingdom on the hills called \(words.kingdomName). She had " +
        "five \(words.pluralNoun). While she was \(words.verb) the horse she fell" +
        " off of the horse and her dress had a \(words.color) stain on it. When " +
        "she got back to the kingdom she quickly changed so that she could wash " +
        "her dress. Her \(words.noun) told her to come down for dinner after they" +
        " finished eating. They all went to take \(words.pluralVerb) the " +
        "following day. The princess went out to the village to go to the" +
        " supermarket when she ran into a prince. They fell in love and got married " +
        "and had three children and they lived happily ever after."

    }
}


#Preview {
    StoryView(words: Words())
}
