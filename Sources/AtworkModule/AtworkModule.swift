import SwiftUI

public struct AtworkModule: View {
    private let title: String
    private let accentColor: Color

    /// Designated initializer allowing host apps to configure basic text & color.
    public init(title: String = "Welcome", accentColor: Color = .blue) {
        self.title = title
        self.accentColor = accentColor
    }

    public var body: some View {
        VStack(spacing: 24) {
            Text(title)
                .font(.largeTitle.bold())
                .foregroundColor(accentColor)

            Text("This view comes from the WelcomeFeature Swift Package.")
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Image("failed", bundle: .module)
            Button(action: { /* Stage 1: no action */ }) {
                Text("Get Started")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(accentColor)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .shadow(radius: 4, y: 2)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

struct AtworkModule_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AtworkModule()
            AtworkModule(title: "Hello YouGotaGift", accentColor: .purple)
                .preferredColorScheme(.dark)
        }
    }
}

