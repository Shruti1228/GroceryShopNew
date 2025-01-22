import SwiftUI

struct SignUpView: View {
    var body: some View {
        @Environment(\.presentationMode) var mode: Binding<PresentationMode>
        @StateObject var loginVM = MainViewModel.shared;

        ZStack{
            Image("bottom_bg")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack{
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:70, height:70)
                    .padding(.bottom,30)
                
                Text("Sign Up")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .font(Font.custom("Gilroy-SemiBold", size: 30))
                    .frame(minWidth:0, maxWidth:.infinity, alignment: .leading)
                    .padding(.horizontal,20)
                
                Text("Enter your credentials to continue")
                    .foregroundColor(.black.opacity(0.5))
                    .font(Font.custom("Gilroy-Regular", size:18))
                    .frame(minWidth:0, maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,20)
                
                LineTextField( title: "Username", placholder: "Enter your email username", txt: $loginVM.txtEmail, keyboardType: .emailAddress)
                    
                    .padding(.horizontal,20)
                
                LineTextField( title: "Email", placholder: "Enter your email Email", txt: $loginVM.txtEmail, keyboardType: .emailAddress)
                    
                    .padding(.horizontal,20)
                
                LineSecureField( title: "Password", placholder: "Enter your password", txt: $loginVM.txtPassword, isShowPassword: $loginVM.isShowPassword)
                    .padding(.bottom, 10)
                    .padding(.horizontal,20)
                
                VStack(alignment: .leading){
                    HStack{
                        Text("By continuing you agree to our")
                            .foregroundColor(.black.opacity(0.5))
                            .font(Font.custom("Gilroy-Regular", size: 16))
                        
                        
                        Button(action: {}, label:{
                            Text("Terms of Service")
                        })
                        .foregroundColor(.green)
                        .font(Font.custom("Gilroy-Regular", size:16))
                        
                    }
                    
                    HStack{
                        Text("and")
                            .foregroundColor(.black.opacity(0.5))
                            .font(Font.custom("Gilroy-Regular", size: 16))
                        
                        Button(action: {}, label:{
                            Text("Privacy Policy")
                        })
                        .foregroundColor(.green)
                        .font(Font.custom("Gilroy-Regular", size:16))
                    }
                }
                .padding(.bottom,20)
                    
                    Button(action: {}, label: {
                        Text("Sign Up")
                    } )
                    .frame(maxWidth: .infinity , minHeight: 60 )
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(40)
                    .padding(.horizontal,20)
                    
                
                HStack{
                    Text("Don't have an account?")
                        .foregroundColor(.black)
                        .font(Font.custom("Gilroy-Regular", size: 16))
                    
                    Button(action: {}, label: {
                        Text("Sign up")
                            .foregroundColor(.green)
                            .font(Font.custom("Gilroy-Regular", size: 16))
                    } )
                }
                .padding(.top,15)
            }
            
            VStack{
                HStack{
                    NavigationLink{
                        LoginView()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width:20, height:20)
                    }
                    Spacer()
                }
             Spacer()
            }
            .padding(.top,60)
            .padding(.horizontal,20)
            
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
    
}
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

