//
//  MassageScheduleView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import SwiftUI

struct MassageScheduleView: View {
  @State private var selectTime: MassageTimesViewModel = .sevenAm
  @State var selection = ""
  @State private var date = Date()
  
    var body: some View {
        VStack {
          Text("Select your appointment date and time.")
            .font(.title3)
            .foregroundColor(Color.letterColor)
          Form {
            DatePicker("Date", selection: $date, in: Date()..., displayedComponents: .date)
            ScrollView {
              VStack(alignment: .leading, spacing: 15) {
                ForEach(MassageTimesViewModel.allCases, id: \.rawValue) { time in
                  HStack {
                    Text(time.title)
                    Spacer()
                   BookingRectangleComponentView()
                  }
                .padding(.horizontal, 30)
                .padding(.top, 10)
              }
            }
          }
        }
      }
        .background(Color.viewColor)
    }
}

#Preview {
  NavigationStack {
    MassageScheduleView()
  }
}
