//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map(Locale.init)
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  static func validate() throws {
    try font.validate()
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 7 storyboards.
  struct storyboard {
    /// Storyboard `AskStories`.
    static let askStories = _R.storyboard.askStories()
    /// Storyboard `Comments`.
    static let comments = _R.storyboard.comments()
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    /// Storyboard `NewsStories`.
    static let newsStories = _R.storyboard.newsStories()
    /// Storyboard `ShowStories`.
    static let showStories = _R.storyboard.showStories()
    /// Storyboard `TopStories`.
    static let topStories = _R.storyboard.topStories()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "AskStories", bundle: ...)`
    static func askStories(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.askStories)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Comments", bundle: ...)`
    static func comments(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.comments)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "NewsStories", bundle: ...)`
    static func newsStories(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.newsStories)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "ShowStories", bundle: ...)`
    static func showStories(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.showStories)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "TopStories", bundle: ...)`
    static func topStories(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.topStories)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.file` struct is generated, and contains static references to 6 files.
  struct file {
    /// Resource file `OpenSans-Bold.ttf`.
    static let openSansBoldTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "OpenSans-Bold", pathExtension: "ttf")
    /// Resource file `OpenSans-Light.ttf`.
    static let openSansLightTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "OpenSans-Light", pathExtension: "ttf")
    /// Resource file `OpenSans-Regular.ttf`.
    static let openSansRegularTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "OpenSans-Regular", pathExtension: "ttf")
    /// Resource file `OpenSans-Semibold.ttf`.
    static let openSansSemiboldTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "OpenSans-Semibold", pathExtension: "ttf")
    /// Resource file `fabric.apikey`.
    static let fabricApikey = Rswift.FileResource(bundle: R.hostingBundle, name: "fabric", pathExtension: "apikey")
    /// Resource file `fabric.buildsecret`.
    static let fabricBuildsecret = Rswift.FileResource(bundle: R.hostingBundle, name: "fabric", pathExtension: "buildsecret")

    /// `bundle.url(forResource: "OpenSans-Bold", withExtension: "ttf")`
    static func openSansBoldTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.openSansBoldTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "OpenSans-Light", withExtension: "ttf")`
    static func openSansLightTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.openSansLightTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "OpenSans-Regular", withExtension: "ttf")`
    static func openSansRegularTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.openSansRegularTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "OpenSans-Semibold", withExtension: "ttf")`
    static func openSansSemiboldTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.openSansSemiboldTtf
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "fabric", withExtension: "apikey")`
    static func fabricApikey(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.fabricApikey
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "fabric", withExtension: "buildsecret")`
    static func fabricBuildsecret(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.fabricBuildsecret
      return fileResource.bundle.url(forResource: fileResource)
    }

    fileprivate init() {}
  }

  /// This `R.font` struct is generated, and contains static references to 4 fonts.
  struct font: Rswift.Validatable {
    /// Font `OpenSans-Bold`.
    static let openSansBold = Rswift.FontResource(fontName: "OpenSans-Bold")
    /// Font `OpenSans-Light`.
    static let openSansLight = Rswift.FontResource(fontName: "OpenSans-Light")
    /// Font `OpenSans-Semibold`.
    static let openSansSemibold = Rswift.FontResource(fontName: "OpenSans-Semibold")
    /// Font `OpenSans`.
    static let openSans = Rswift.FontResource(fontName: "OpenSans")

    /// `UIFont(name: "OpenSans", size: ...)`
    static func openSans(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: openSans, size: size)
    }

    /// `UIFont(name: "OpenSans-Bold", size: ...)`
    static func openSansBold(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: openSansBold, size: size)
    }

    /// `UIFont(name: "OpenSans-Light", size: ...)`
    static func openSansLight(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: openSansLight, size: size)
    }

    /// `UIFont(name: "OpenSans-Semibold", size: ...)`
    static func openSansSemibold(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: openSansSemibold, size: size)
    }

    static func validate() throws {
      if R.font.openSans(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'OpenSans' could not be loaded, is 'OpenSans-Regular.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.openSansBold(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'OpenSans-Bold' could not be loaded, is 'OpenSans-Bold.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.openSansLight(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'OpenSans-Light' could not be loaded, is 'OpenSans-Light.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.openSansSemibold(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'OpenSans-Semibold' could not be loaded, is 'OpenSans-Semibold.ttf' added to the UIAppFonts array in this targets Info.plist?") }
    }

    fileprivate init() {}
  }

  /// This `R.image` struct is generated, and contains static references to 6 images.
  struct image {
    /// Image `Ask`.
    static let ask = Rswift.ImageResource(bundle: R.hostingBundle, name: "Ask")
    /// Image `Comments`.
    static let comments = Rswift.ImageResource(bundle: R.hostingBundle, name: "Comments")
    /// Image `Earth`.
    static let earth = Rswift.ImageResource(bundle: R.hostingBundle, name: "Earth")
    /// Image `LanuchScreenIcon`.
    static let lanuchScreenIcon = Rswift.ImageResource(bundle: R.hostingBundle, name: "LanuchScreenIcon")
    /// Image `News`.
    static let news = Rswift.ImageResource(bundle: R.hostingBundle, name: "News")
    /// Image `Show`.
    static let show = Rswift.ImageResource(bundle: R.hostingBundle, name: "Show")

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "Ask", bundle: ..., traitCollection: ...)`
    static func ask(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.ask, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "Comments", bundle: ..., traitCollection: ...)`
    static func comments(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.comments, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "Earth", bundle: ..., traitCollection: ...)`
    static func earth(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.earth, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "LanuchScreenIcon", bundle: ..., traitCollection: ...)`
    static func lanuchScreenIcon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.lanuchScreenIcon, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "News", bundle: ..., traitCollection: ...)`
    static func news(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.news, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "Show", bundle: ..., traitCollection: ...)`
    static func show(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.show, compatibleWith: traitCollection)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.nib` struct is generated, and contains static references to 3 nibs.
  struct nib {
    /// Nib `CommentTableViewCell`.
    static let commentTableViewCell = _R.nib._CommentTableViewCell()
    /// Nib `LoadingTableViewCell`.
    static let loadingTableViewCell = _R.nib._LoadingTableViewCell()
    /// Nib `NewsTableViewCell`.
    static let newsTableViewCell = _R.nib._NewsTableViewCell()

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "CommentTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.commentTableViewCell) instead")
    static func commentTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.commentTableViewCell)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "LoadingTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.loadingTableViewCell) instead")
    static func loadingTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.loadingTableViewCell)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "NewsTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.newsTableViewCell) instead")
    static func newsTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.newsTableViewCell)
    }
    #endif

    static func commentTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> CommentTableViewCell? {
      return R.nib.commentTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? CommentTableViewCell
    }

    static func loadingTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> LoadingTableViewCell? {
      return R.nib.loadingTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? LoadingTableViewCell
    }

    static func newsTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> NewsTableViewCell? {
      return R.nib.newsTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? NewsTableViewCell
    }

    fileprivate init() {}
  }

  /// This `R.reuseIdentifier` struct is generated, and contains static references to 2 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `LoadingTableViewCell`.
    static let loadingTableViewCell: Rswift.ReuseIdentifier<LoadingTableViewCell> = Rswift.ReuseIdentifier(identifier: "LoadingTableViewCell")
    /// Reuse identifier `NewsTableViewCell`.
    static let newsTableViewCell: Rswift.ReuseIdentifier<NewsTableViewCell> = Rswift.ReuseIdentifier(identifier: "NewsTableViewCell")

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    #if os(iOS) || os(tvOS)
    try nib.validate()
    #endif
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  struct nib: Rswift.Validatable {
    static func validate() throws {
      try _NewsTableViewCell.validate()
    }

    struct _CommentTableViewCell: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "CommentTableViewCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> CommentTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? CommentTableViewCell
      }

      fileprivate init() {}
    }

    struct _LoadingTableViewCell: Rswift.NibResourceType, Rswift.ReuseIdentifierType {
      typealias ReusableType = LoadingTableViewCell

      let bundle = R.hostingBundle
      let identifier = "LoadingTableViewCell"
      let name = "LoadingTableViewCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> LoadingTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? LoadingTableViewCell
      }

      fileprivate init() {}
    }

    struct _NewsTableViewCell: Rswift.NibResourceType, Rswift.ReuseIdentifierType, Rswift.Validatable {
      typealias ReusableType = NewsTableViewCell

      let bundle = R.hostingBundle
      let identifier = "NewsTableViewCell"
      let name = "NewsTableViewCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> NewsTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? NewsTableViewCell
      }

      static func validate() throws {
        if UIKit.UIImage(named: "Comments", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'Comments' is used in nib 'NewsTableViewCell', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }

    fileprivate init() {}
  }
  #endif

  #if os(iOS) || os(tvOS)
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      #if os(iOS) || os(tvOS)
      try askStories.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try comments.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try main.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try newsStories.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try showStories.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try topStories.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    struct askStories: Rswift.StoryboardResourceType, Rswift.Validatable {
      let askStoriesViewController = StoryboardViewControllerResource<AskStoriesViewController>(identifier: "AskStoriesViewController")
      let bundle = R.hostingBundle
      let name = "AskStories"

      func askStoriesViewController(_: Void = ()) -> AskStoriesViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: askStoriesViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.askStories().askStoriesViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'askStoriesViewController' could not be loaded from storyboard 'AskStories' as 'AskStoriesViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct comments: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = CommentsViewController

      let bundle = R.hostingBundle
      let commentsViewController = StoryboardViewControllerResource<CommentsViewController>(identifier: "CommentsViewController")
      let name = "Comments"

      func commentsViewController(_: Void = ()) -> CommentsViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: commentsViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.comments().commentsViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'commentsViewController' could not be loaded from storyboard 'Comments' as 'CommentsViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController

      let bundle = R.hostingBundle
      let name = "LaunchScreen"

      static func validate() throws {
        if UIKit.UIImage(named: "LanuchScreenIcon", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'LanuchScreenIcon' is used in storyboard 'LaunchScreen', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UINavigationController

      let bundle = R.hostingBundle
      let name = "Main"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct newsStories: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "NewsStories"
      let newsStoriesViewController = StoryboardViewControllerResource<NewsStoriesViewController>(identifier: "NewsStoriesViewController")

      func newsStoriesViewController(_: Void = ()) -> NewsStoriesViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: newsStoriesViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.newsStories().newsStoriesViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'newsStoriesViewController' could not be loaded from storyboard 'NewsStories' as 'NewsStoriesViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct showStories: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "ShowStories"
      let showStoriesViewController = StoryboardViewControllerResource<ShowStoriesViewController>(identifier: "ShowStoriesViewController")

      func showStoriesViewController(_: Void = ()) -> ShowStoriesViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: showStoriesViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.showStories().showStoriesViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'showStoriesViewController' could not be loaded from storyboard 'ShowStories' as 'ShowStoriesViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct topStories: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "TopStories"
      let topStoriesViewController = StoryboardViewControllerResource<TopStoriesViewController>(identifier: "TopStoriesViewController")

      func topStoriesViewController(_: Void = ()) -> TopStoriesViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: topStoriesViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.topStories().topStoriesViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'topStoriesViewController' could not be loaded from storyboard 'TopStories' as 'TopStoriesViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}
