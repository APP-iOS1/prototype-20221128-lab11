
import SwiftUI


struct SearchBar: View {
    
    @State var inputText: String = ""
    @State private var isEditing = false
    
    var body: some View {
        
        HStack {
            
            TextField("Search Place Sound", text: $inputText)
                .padding(7)
                .padding(.horizontal, 25)
                .cornerRadius(8)
                .background(.white)
                .foregroundColor(.black)
                .padding(.horizontal, 10)
                .offset(y: -320)
                .onTapGesture {
                    self.isEditing = true
                }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.inputText = ""
                    
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .offset(y: -320)
                .animation(.default)
            }
        }
    }
}
