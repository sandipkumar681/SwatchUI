import SwiftUI

public struct TagChip: View {
    private let text: String

    public init(_ text: String) { self.text = text }

    public var body: some View {
        Text(text)
            .font(.caption.bold())
            .padding(.horizontal, Spacing.small * 1.5)
            .padding(.vertical, Spacing.small / 2)
            .foregroundStyle(Swatch.primary)
            .background(Swatch.primary.opacity(0.12), in: Capsule())
    }
}
