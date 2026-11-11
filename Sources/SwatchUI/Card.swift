import SwiftUI

public struct Card<Content: View>: View {
    private let content: Content

    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    public var body: some View {
        content
            .padding(Spacing.large)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Swatch.surface, in: RoundedRectangle(cornerRadius: Radius.card))
    }
}
