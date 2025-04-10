import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "Bruschetta" asset catalog image resource.
    static let bruschetta = DeveloperToolsSupport.ImageResource(name: "Bruschetta", bundle: resourceBundle)

    /// The "Delivery van" asset catalog image resource.
    static let deliveryVan = DeveloperToolsSupport.ImageResource(name: "Delivery van", bundle: resourceBundle)

    /// The "Greek salad" asset catalog image resource.
    static let greekSalad = DeveloperToolsSupport.ImageResource(name: "Greek salad", bundle: resourceBundle)

    /// The "Grilled fish" asset catalog image resource.
    static let grilledFish = DeveloperToolsSupport.ImageResource(name: "Grilled fish", bundle: resourceBundle)

    /// The "Hero image" asset catalog image resource.
    static let hero = DeveloperToolsSupport.ImageResource(name: "Hero image", bundle: resourceBundle)

    /// The "Lemon dessert" asset catalog image resource.
    static let lemonDessert = DeveloperToolsSupport.ImageResource(name: "Lemon dessert", bundle: resourceBundle)

    /// The "Logo" asset catalog image resource.
    static let logo = DeveloperToolsSupport.ImageResource(name: "Logo", bundle: resourceBundle)

    /// The "Pasta" asset catalog image resource.
    static let pasta = DeveloperToolsSupport.ImageResource(name: "Pasta", bundle: resourceBundle)

    /// The "Permissible colors" asset catalog image resource.
    static let permissibleColors = DeveloperToolsSupport.ImageResource(name: "Permissible colors", bundle: resourceBundle)

    /// The "Profile" asset catalog image resource.
    static let profile = DeveloperToolsSupport.ImageResource(name: "Profile", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "Bruschetta" asset catalog image.
    static var bruschetta: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .bruschetta)
#else
        .init()
#endif
    }

    /// The "Delivery van" asset catalog image.
    static var deliveryVan: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .deliveryVan)
#else
        .init()
#endif
    }

    /// The "Greek salad" asset catalog image.
    static var greekSalad: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .greekSalad)
#else
        .init()
#endif
    }

    /// The "Grilled fish" asset catalog image.
    static var grilledFish: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .grilledFish)
#else
        .init()
#endif
    }

    /// The "Hero image" asset catalog image.
    static var hero: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .hero)
#else
        .init()
#endif
    }

    /// The "Lemon dessert" asset catalog image.
    static var lemonDessert: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .lemonDessert)
#else
        .init()
#endif
    }

    /// The "Logo" asset catalog image.
    static var logo: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .logo)
#else
        .init()
#endif
    }

    /// The "Pasta" asset catalog image.
    static var pasta: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pasta)
#else
        .init()
#endif
    }

    /// The "Permissible colors" asset catalog image.
    static var permissibleColors: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .permissibleColors)
#else
        .init()
#endif
    }

    /// The "Profile" asset catalog image.
    static var profile: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .profile)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "Bruschetta" asset catalog image.
    static var bruschetta: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .bruschetta)
#else
        .init()
#endif
    }

    /// The "Delivery van" asset catalog image.
    static var deliveryVan: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .deliveryVan)
#else
        .init()
#endif
    }

    /// The "Greek salad" asset catalog image.
    static var greekSalad: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .greekSalad)
#else
        .init()
#endif
    }

    /// The "Grilled fish" asset catalog image.
    static var grilledFish: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .grilledFish)
#else
        .init()
#endif
    }

    /// The "Hero image" asset catalog image.
    static var hero: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .hero)
#else
        .init()
#endif
    }

    /// The "Lemon dessert" asset catalog image.
    static var lemonDessert: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .lemonDessert)
#else
        .init()
#endif
    }

    /// The "Logo" asset catalog image.
    static var logo: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .logo)
#else
        .init()
#endif
    }

    /// The "Pasta" asset catalog image.
    static var pasta: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pasta)
#else
        .init()
#endif
    }

    /// The "Permissible colors" asset catalog image.
    static var permissibleColors: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .permissibleColors)
#else
        .init()
#endif
    }

    /// The "Profile" asset catalog image.
    static var profile: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .profile)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

