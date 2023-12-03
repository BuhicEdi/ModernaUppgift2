//
//  ContentView.swift
//  ModernaUppgift2
//
//  Created by Edi Buhic on 2023-12-03.
//

import SwiftUI

struct ContentView: View {
    
    @State var addData = ""
    @State var data = ["Rad 1", "Rad 2", "Rad 3"]
    
    var body: some View {
        VStack {
            Image(systemName: "note.text")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Lista")
            
            HStack {
                TextField("Lägg till nytt...", text: $addData)
                
                Button(action: {data.append(addData)}) {
                       Text("Lägg till")
                }
            }
            
            List(data, id: \.self) { newData in
                Text(newData)
            }
            Button("Nollställ") {
                data.removeAll()
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

