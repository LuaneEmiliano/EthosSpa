//
//  TypeOfMassagePressureView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import SwiftUI

struct TypeOfMassagePressureView: View {
  @State var selectionOption = ""
  @State private var selectionFilter: TypeOfPressureViewModel = .soft
  
  var body: some View {
    NavigationStack {
      VStack {
        Text("What type of pressure do you want?")
          .padding(.top, 25)
          .font(.title2)
          .foregroundColor(.letterColor)
        
        ScrollView {
          ForEach(TypeOfPressureViewModel.allCases, id: \.rawValue) { item in
            Button {
              selectionOption = item.title
            } label: {
              RectangleComponent(text: item.title, selection: selectionOption)
            }
          }
        }
        
        NavigationLink {
          ApptConfirmationView()
        } label: {
          Text("Book your massage")
            .font(.headline)
            .foregroundColor(Color.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.orangeButtons)
            .cornerRadius(10)
            .padding(40)
        }
      }
      .background(Color.viewColor)
    }
    .accentColor(.letterColor)
  }
}
#Preview {
  TypeOfMassagePressureView()
}
