// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `google_signin_aware`.
@HtmlImport('google_signin_aware_nodart.html')
library polymer_elements.lib.src.google_signin.google_signin_aware;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'google_js_api.dart';

/// `google-signin-aware` is used to enable authentication in custom elements by
/// interacting with a google-signin element that needs to be present somewhere
/// on the page.
///
/// The `scopes` attribute allows you to specify which scope permissions are required
/// (e.g do you want to allow interaction with the Google Drive API).
///
/// The `google-signin-aware-success` event is triggered when a user successfully
/// authenticates. The `google-signin-aware-signed-out` event is triggered
/// when a user explicitely signs out via the google-signin element.
///
/// You can bind to `isAuthorized` property to monitor authorization state.
/// ##### Example
///
///     <google-signin-aware scopes="https://www.googleapis.com/auth/drive"></google-signin-aware>
@CustomElementProxy('google-signin-aware')
class GoogleSigninAware extends HtmlElement with CustomElementProxyMixin, PolymerBase {
  GoogleSigninAware.created() : super.created();
  factory GoogleSigninAware() => new Element.tag('google-signin-aware');

  /// App package name for android over-the-air installs.
  /// See the relevant [docs](https://developers.google.com/+/web/signin/android-app-installs)
  String get appPackageName => jsElement[r'appPackageName'];
  set appPackageName(String value) { jsElement[r'appPackageName'] = value; }

  /// a Google Developers clientId reference
  String get clientId => jsElement[r'clientId'];
  set clientId(String value) { jsElement[r'clientId'] = value; }

  /// The cookie policy defines what URIs have access to the session cookie
  /// remembering the user's sign-in state.
  /// See the relevant [docs](https://developers.google.com/+/web/signin/reference#determining_a_value_for_cookie_policy) for more information.
  String get cookiePolicy => jsElement[r'cookiePolicy'];
  set cookiePolicy(String value) { jsElement[r'cookiePolicy'] = value; }

  /// True if *any* element has google+ scopes
  bool get hasPlusScopes => jsElement[r'hasPlusScopes'];
  set hasPlusScopes(bool value) { jsElement[r'hasPlusScopes'] = value; }

  /// True if authorizations for *this* element have been granted
  bool get isAuthorized => jsElement[r'isAuthorized'];
  set isAuthorized(bool value) { jsElement[r'isAuthorized'] = value; }

  /// True if additional authorizations for *any* element are required
  bool get needAdditionalAuth => jsElement[r'needAdditionalAuth'];
  set needAdditionalAuth(bool value) { jsElement[r'needAdditionalAuth'] = value; }

  /// The app activity types you want to write on behalf of the user
  /// (e.g http://schemas.google.com/AddActivity)
  String get requestVisibleActions => jsElement[r'requestVisibleActions'];
  set requestVisibleActions(String value) { jsElement[r'requestVisibleActions'] = value; }

  /// The scopes to provide access to (e.g https://www.googleapis.com/auth/drive)
  /// and should be space-delimited.
  String get scopes => jsElement[r'scopes'];
  set scopes(String value) { jsElement[r'scopes'] = value; }

  /// True if user is signed in
  bool get signedIn => jsElement[r'signedIn'];
  set signedIn(bool value) { jsElement[r'signedIn'] = value; }

  /// pops up the authorization dialog
  void signIn() =>
      jsElement.callMethod('signIn', []);

  /// signs user out
  void signOut() =>
      jsElement.callMethod('signOut', []);
}
