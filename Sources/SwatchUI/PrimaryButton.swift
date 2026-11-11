import SwiftUI

public struct PrimaryButton: View {
    private let title: String
    private let action: () -> Void

    public init(_ title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, Spacing.medium)
                .background(Swatch.primary, in: RoundedRectangle(cornerRadius: Radius.button))
        }
        .buttonStyle(.plain)
    }
}
