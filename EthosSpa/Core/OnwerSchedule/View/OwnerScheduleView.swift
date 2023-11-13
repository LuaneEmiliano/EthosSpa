//
//  OwnerScheduleView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/13/23.
//

import SwiftUI

struct OwnerScheduleView: View {
  @State var selectionOption = Set<String>()
  @State private var date = Date()
  @State private var selectionFilter: MassageScheduleViewModel = .monday
  @State private var selectTime: MassageTimesViewModel = .sevenAm
  
  let columns: [GridItem] = [
    GridItem(.flexible(), spacing: nil, alignment: nil),
    GridItem(.flexible(), spacing: nil, alignment: nil),
    GridItem(.flexible(), spacing: nil, alignment: nil),
  ]
  
  var body: some View {
    VStack {
      HStack(spacing: 50) {
        ForEach(MassageScheduleViewModel.allCases, id: \.rawValue) { date in
          Text(date.title)
        }
      }
      
      Divider()
        .padding()
      
      DatePicker("Date", selection: $date, in: Date()..., displayedComponents: .date)
      
      LazyVGrid(columns: columns) {
        ForEach(MassageTimesViewModel.allCases, id: \.rawValue) { option in
          Button {
            if selectionOption.contains(option.title) {
              selectionOption.remove(option.title)
            } else {
              selectionOption.insert(option.title)
            }
          } label: {
            ReusableCircle(text: option.title, selection: selectionOption)
          }
        }
      }
      Spacer()
    }
    .padding(.horizontal, 10)
    .background(Color.viewColor)
  }
}

#Preview {
  OwnerScheduleView()
}
