# UserGuard VPN — Landing Page

A responsive, single-page Flutter landing site for the fictional "UserGuard VPN"
product. The interface uses a dark theme with a cyan accent and is designed to
adapt across phone, tablet, and desktop widths.

## Project structure

- `lib/main.dart` — the entire application: theme, responsive navigation bar,
  hero, features, server locations, call-to-action, and footer.
- `test/widget_test.dart` — regression tests covering rendering, responsive
  navigation, and the primary interactions.

## Key implementation details

- **Brand palette** is centralized in `AppColors` (`lib/main.dart`) so colors
  stay consistent and are easy to change.
- **Responsive navigation** collapses the inline links into a `PopupMenuButton`
  below 900px (`_kNavCollapseWidth`) to avoid overflow on narrow screens.
- **Fluid typography** scales heading sizes based on the viewport width.
- **Cross-platform server badges** use ISO country codes instead of flag emoji,
  which render inconsistently (e.g. as letter pairs) on platforms like Windows.
- **Scroll-to-section** navigation wires the nav links and hero CTAs to the
  matching sections using `Scrollable.ensureVisible`.

## Running

```bash
flutter pub get
flutter run
```

## Testing

```bash
flutter test
```

## Static analysis

```bash
flutter analyze
```