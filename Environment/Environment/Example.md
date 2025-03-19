#  <#Title#>

1. @Environment
Used to access predefined system values or custom environment keys.
Typically used for static or lightweight data.
Values are injected using .environment(_:_:).
It does not require an ObservableObject.


2. @EnvironmentObject
Used to pass a shared instance of an ObservableObject down the view hierarchy.
Suitable for dynamic, app-wide state management.
Requires an ObservableObject to be provided via .environmentObject(_:).
Can be updated and observed across multiple views.


✅ Use @Environment for system-provided values (e.g., colorScheme, locale) or simple custom values.
✅ Use @EnvironmentObject for app-wide state that is mutable and needs to be observed, like user authentication or settings.
