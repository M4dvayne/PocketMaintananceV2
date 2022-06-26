//
//  NoteView.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 20.06.2022.
//

import SwiftUI

struct NoteView: View {
    //сделать appStorage
    @State private var enteredText: String = ""
    
    var body: some View {
        NavigationView{
            TextEditor(text: $enteredText)
                    .font(.footnote)
                    .navigationTitle("My note")
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView()
    }
}
