//
//  ContentView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack {
        Image(systemName: "Heart")
          .resizable()
          .background(Color.viewColors)
        HStack {
          Button {
            
          }label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
              .font(.headline)
              .foregroundColor(.white)
              .frame( height: 55)
              .frame(maxWidth: .infinity)
              .background(Color.orangeButton)
          }
        }
        HStack {
          Button {
            
          }label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
              .font(.headline)
              .foregroundColor(.white)
              .frame( height: 55)
              .frame(maxWidth: .infinity)
              .background(Color.otherButtons)
          }
        }
      }
      }
}

#Preview {
    ContentView()
}
