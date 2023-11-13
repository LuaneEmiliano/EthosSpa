//
//  TypeOfMassagePressureView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import SwiftUI

struct TypeOfTreatmentView: View {
  @State var selection = ""
  @State private var selectionFilter: TypeOfTreatmentViewModel = .ethosRelaxingMassage
  
  var body: some View {
    NavigationStack {
      VStack {
        Text("What treatment do you want today?")
          .padding(.top, 30)
          .font(.title2)
          .foregroundColor(.letterColor)
        
        ScrollView {
          ForEach(TypeOfTreatmentViewModel.allCases, id: \.rawValue) { option in
            Button {
              selection = option.title
            } label: {
              RectangleComponent(text: option.title, selection: selection)
            }
          }
        }
        
        NavigationLink {
          TypeOfMassagePressureView()
        } label: {
          Text("Continue")
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
  TypeOfTreatmentView()
}
