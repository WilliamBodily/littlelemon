#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "Bruschetta" asset catalog image resource.
static NSString * const ACImageNameBruschetta AC_SWIFT_PRIVATE = @"Bruschetta";

/// The "Delivery van" asset catalog image resource.
static NSString * const ACImageNameDeliveryVan AC_SWIFT_PRIVATE = @"Delivery van";

/// The "Greek salad" asset catalog image resource.
static NSString * const ACImageNameGreekSalad AC_SWIFT_PRIVATE = @"Greek salad";

/// The "Grilled fish" asset catalog image resource.
static NSString * const ACImageNameGrilledFish AC_SWIFT_PRIVATE = @"Grilled fish";

/// The "Hero image" asset catalog image resource.
static NSString * const ACImageNameHeroImage AC_SWIFT_PRIVATE = @"Hero image";

/// The "Lemon dessert" asset catalog image resource.
static NSString * const ACImageNameLemonDessert AC_SWIFT_PRIVATE = @"Lemon dessert";

/// The "Logo" asset catalog image resource.
static NSString * const ACImageNameLogo AC_SWIFT_PRIVATE = @"Logo";

/// The "Pasta" asset catalog image resource.
static NSString * const ACImageNamePasta AC_SWIFT_PRIVATE = @"Pasta";

/// The "Permissible colors" asset catalog image resource.
static NSString * const ACImageNamePermissibleColors AC_SWIFT_PRIVATE = @"Permissible colors";

/// The "Profile" asset catalog image resource.
static NSString * const ACImageNameProfile AC_SWIFT_PRIVATE = @"Profile";

#undef AC_SWIFT_PRIVATE
