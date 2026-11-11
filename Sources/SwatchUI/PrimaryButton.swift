import SwiftUI

public struct PrimaryButton: View {
    public enum Style { case normal, destructive }

    private let title: String
    private let style: Style
    private let action: () -> Void

    public init(_ title: String, style: Style = .normal, action: @escaping () -> Void) {
        self.title = title
        self.style = style
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, Spacing.medium)
                .background(style == .destructive ? Swatch.danger : Swatch.primary,
                            in: RoundedRectangle(cornerRadius: Radius.button))
        }
        .buttonStyle(.plain)
    }
}
