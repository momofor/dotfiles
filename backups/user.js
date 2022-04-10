user_pref("media.ffmpeg.vaapi.enabled ", true);
// user_pref("media.ffvpx.enabled", false);
// user_pref("media.navigator.mediadatadecoder_vpx_enabled", true);
// user_pref("media.rdd-vpx.enabled", false);
user_pref("browser.proton.places-tooltip.enabled", true);

// Fill SVG Color
user_pref("svg.context-properties.content.enabled", true);

// CSS Color Mix - 88 Above
user_pref("layout.css.color-mix.enabled", true);

// CSS Blur Filter - 88 Above
user_pref("layout.css.backdrop-filter.enabled", true);

// Restore Compact Mode - 89 Above
user_pref("browser.compactmode.show", true);

user_pref("browser.tabs.drawInTitlebar", true);
user_pref("apz.allow_zooming", true); ///     true
user_pref("apz.force_disable_desktop_zooming_scrollbars", false); ///    false
user_pref("apz.paint_skipping.enabled", true); ///     true
user_pref("apz.windows.use_direct_manipulation", true); ///     true
user_pref("dom.event.wheel-deltaMode-lines.always-disabled", true); ///    false
user_pref("general.smoothScroll.currentVelocityWeighting", "0.12"); ///   "0.25" <- 1. If scroll too slow, set to "0.15"
user_pref("general.smoothScroll.durationToIntervalRatio", 1000); ///      200
user_pref("general.smoothScroll.lines.durationMaxMS", 100); ///      150
user_pref("general.smoothScroll.lines.durationMinMS", 0); ///      150
user_pref("general.smoothScroll.mouseWheel.durationMaxMS", 100); ///      200
user_pref("general.smoothScroll.mouseWheel.durationMinMS", 0); ///       50
user_pref("general.smoothScroll.mouseWheel.migrationPercent", 100); ///      100
user_pref("general.smoothScroll.msdPhysics.continuousMotionMaxDeltaMS", 12); ///      120
user_pref("general.smoothScroll.msdPhysics.enabled", true); ///    false
user_pref("general.smoothScroll.msdPhysics.motionBeginSpringConstant", 200); ///     1250
user_pref("general.smoothScroll.msdPhysics.regularSpringConstant", 200); ///     1000
user_pref("general.smoothScroll.msdPhysics.slowdownMinDeltaMS", 10); ///       12
user_pref("general.smoothScroll.msdPhysics.slowdownMinDeltaRatio", "1.20"); ///    "1.3"
user_pref("general.smoothScroll.msdPhysics.slowdownSpringConstant", 1000); ///     2000
user_pref("general.smoothScroll.other.durationMaxMS", 100); ///      150
user_pref("general.smoothScroll.other.durationMinMS", 0); ///      150
user_pref("general.smoothScroll.pages.durationMaxMS", 100); ///      150
user_pref("general.smoothScroll.pages.durationMinMS", 0); ///      150
user_pref("general.smoothScroll.pixels.durationMaxMS", 100); ///      150
user_pref("general.smoothScroll.pixels.durationMinMS", 0); ///      150
user_pref("general.smoothScroll.scrollbars.durationMaxMS", 100); ///      150
user_pref("general.smoothScroll.scrollbars.durationMinMS", 0); ///      150
user_pref("general.smoothScroll.stopDecelerationWeighting", "0.6"); ///    "0.4"
user_pref("layers.async-pan-zoom.enabled", true); ///     true
user_pref("layout.css.scroll-behavior.spring-constant", "250.0"); ///   "250.0"
user_pref("mousewheel.acceleration.factor", 3); ///       10
user_pref("mousewheel.acceleration.start", -1); ///       -1
user_pref("mousewheel.default.delta_multiplier_x", 100); ///      100
user_pref("mousewheel.default.delta_multiplier_y", 100); ///      100
user_pref("mousewheel.default.delta_multiplier_z", 100); ///      100
user_pref("mousewheel.min_line_scroll_amount", 0); ///        5
user_pref("mousewheel.system_scroll_override.enabled", true); ///     true <- 2. If scroll too fast, set to false
user_pref("mousewheel.system_scroll_override_on_root_content.enabled", false); ///     true
user_pref("mousewheel.transaction.timeout", 1500); ///     1500
user_pref("toolkit.scrollbox.horizontalScrollDistance", 4); ///        5
user_pref("toolkit.scrollbox.verticalScrollDistance", 3); ///        3

/* FasterFox                                                                *
 * "Non ducor duco."                                                        *
 * priority: speedy browsing                                                *
 * version: September 2021                                                  *
 * url: https://github.com/yokoffing/Better-Fox                             *
 ***************************************************************************/

/****************************************************************************
 *                                                                          *
 * [NOTE] For best performance on older hardware, you will need to test     *
 * these settings individually, especially Webrender.                       *
 *                                                                          *
 ****************************************************************************/

// PREF: force enable all Webrender prefs
// DISABLING WILL NOT BE SUPPORTED SOON | https://groups.google.com/a/mozilla.org/g/dev-platform/c/__ZtiiEn0u0/m/fbTlD-I4AAAJ?pli=1
// [1] https://hacks.mozilla.org/2017/10/the-whole-web-at-maximum-fps-how-webrender-gets-rid-of-jank/
// [2] https://wiki.mozilla.org/Platform/GFX/WebRender_Where
// [3] https://www.reddit.com/r/firefox/comments/fo1jwz/make_firefox_faster/flhh5l2/
// user_pref("gfx.webrender.all", true);

// PREF: if your hardware doesn't support Webrender, you can fallback to Webrender's software renderer
// [NOTE] Both preferences need to be "true" if you're using the software renderer.
// DISABLING WILL NOT BE SUPPORTED SOON | https://groups.google.com/a/mozilla.org/g/dev-platform/c/__ZtiiEn0u0/m/fbTlD-I4AAAJ?pli=1
// [1] https://www.ghacks.net/2020/12/14/how-to-find-out-if-webrender-is-enabled-in-firefox-and-how-to-enable-it-if-it-is-not/
user_pref("gfx.webrender.all", true);
user_pref("gfx.webrender.software", true);

// PREF: Lazy Image Loading
// https://www.ghacks.net/2020/02/15/firefox-75-gets-lazy-loading-support-for-images/
user_pref("dom.image-lazy-loading.enabled", true); // default

// PREF: control how tabs are loaded when a session is restored.
// true=Tabs are not loaded until they are selected (default)
// false=Tabs begin to load immediately.
user_pref("browser.sessionstore.restore_on_demand", true); // default
user_pref("browser.sessionstore.restore_pinned_tabs_on_demand", true);
user_pref("browser.sessionstore.restore_tabs_lazily", true); // default

// PREF: disable preSkeletonUI on startup
// May set to "true" if your hardware is very old.
user_pref("browser.startup.preXulSkeletonUI", false);

// PREF: about:home startup cache
// A cache for the initial about:home document that is loaded by default at startup.
// The purpose of the cache is to improve startup performance.
user_pref("browser.startup.homepage.abouthome_cache.enabled", true);

// PREF: process count
// Having more content processes can improve performance when using multiple tabs but
// it will also use more memory. You can reduce the number of content processes if your
// computer is running out of memory. If your computer's system information shows more
// than 8 GB of RAM, you would likely benefit from a high content process limit.
// [1] https://support.mozilla.org/en-US/kb/performance-settings
// default = 8. -1 allows Firefox to use as many as it wants
user_pref("dom.ipc.processCount", -1);

// PREF: increase active connections
// [NOTE] Corresponds with changes made here: https://www.youtube.com/watch?v=jQPPJGkdbU0
// According to the default value, there will be 6 active connections kept for future requests to a server.
// If, at some point, more connections are needed, a delay will occur until there is a slot available.
// To avoid any idle periods, we can set more alive connections, thus forcing the browser to load several elements of a website.
// [1] https://www.download3k.com/articles/How-To-Optimize-Firefox-By-Tweaking-Hidden-Settings-In-The-about-config-Page-01955#Network.http.max-persistent-connections-per-server
// [WARNING] Don't go past 10 or websites may temporarily blacklist your IP!
user_pref("network.http.max-persistent-connections-per-server", 10); // default=6

// PREF: increase communication channels
// Perform this change in order to open communication channels with the server, and consequently load several elements of the website.
// Increased browser speed shall be mainly observed in pages that contain data such as images and videos, which slow down loading times.
// The range of value for this setting goes from 1 to 65535. However, it is rather unreasonable to increase it to the maximum
// allowed value, and subsequently strain the system, so give it a try with a value of 1500.
// [1] https://www.download3k.com/articles/How-To-Optimize-Firefox-By-Tweaking-Hidden-Settings-In-The-about-config-Page-01955#Network.http.max-connections
user_pref("network.http.max-connections", 1500); // default=900

/****************************************************************************
 * SECTION: TRACKING PROTECTION                                             *
 ****************************************************************************/

// PREF: Enhanced Tracking Protection (ETP)
// Tracking Content blocking will strip cookies and block all resource requests to domains listed in Disconnect.me.
// Firefox deletes all stored site data (incl. cookies, browser storage) if the site is a known tracker and hasn’t
// been interacted with in the last 30 days.
// [NOTE] FF86: "Strict" tracking protection enables dFPI.
// [1] https://blog.mozilla.org/firefox/control-trackers-with-firefox/
// [2] https://support.mozilla.org/en-US/kb/enhanced-tracking-protection-firefox-desktop
// [3] https://www.reddit.com/r/firefox/comments/l7xetb/network_priority_for_firefoxs_enhanced_tracking/gle2mqn/?web2x&context=3
user_pref("browser.contentblocking.category", "strict");
user_pref("privacy.trackingprotection.enabled", true);
user_pref("privacy.trackingprotection.pbmode.enabled", true); // default
user_pref("privacy.trackingprotection.cryptomining.enabled", true); // default
user_pref("privacy.trackingprotection.fingerprinting.enabled", true); // default
user_pref("privacy.trackingprotection.socialtracking.enabled", true);
user_pref("privacy.socialtracking.block_cookies.enabled", true); // default
// user_pref("browser.contentblocking.customBlockList.preferences.ui.enabled", true);

// PREF: allow embedded tweets and Instagram posts
// [1] https://www.reddit.com/r/firefox/comments/l79nxy/firefox_dev_is_ignoring_social_tracking_preference/gl84ukk
user_pref("urlclassifier.trackingSkipURLs", "*.twitter.com, *.twimg.com"); // hidden
user_pref(
  "urlclassifier.features.socialtracking.skipURLs",
  "*.instagram.com, *.twitter.com, *.twimg.com"
); // hidden

// PREF: Site Isolation
// Creates operating system process-level boundaries for all sites loaded in Firefox for Desktop. Isolating each site
// into a separate operating system process makes it harder for malicious sites to read another site’s private data.
// [1] https://hacks.mozilla.org/2021/05/introducing-firefox-new-site-isolation-security-architecture/
user_pref("fission.autostart", true);

// PREF: State Paritioning [aka Dynamic First-Party Isolation (dFPI)]
// Firefox manages client-side state (i.e., data stored in the browser) to mitigate the ability of websites to abuse state
// for cross-site tracking. This effort aims to achieve that by providing what is effectively a "different", isolated storage
// location to every website a user visits.
// dFPI is a more web-compatible version of FPI, which double keys all third-party state by the origin of the top-level
// context. dFPI isolates user's browsing data for each top-level eTLD+1, but is flexible enough to apply web
// compatibility heuristics to address resulting breakage by dynamically modifying a frame's storage principal.
// dFPI isolates most sites while applying heuristics to allow sites through the isolation in certain circumstances for usability.
// [NOTE] dFPI partitions all of the following caches by the top-level site being visited: HTTP cache, image cache,
// favicon cache, HSTS cache, OCSP cache, style sheet cache, font cache, DNS cache, HTTP Authentication cache,
// Alt-Svc cache, and TLS certificate cache.
// [1] https://bugzilla.mozilla.org/show_bug.cgi?id=1549587
// [2] https://developer.mozilla.org/en-US/docs/Mozilla/Firefox/Privacy/State_Partitioning
// [3] https://blog.mozilla.org/security/2021/02/23/total-cookie-protection/
// [4] https://hacks.mozilla.org/2021/02/introducing-state-partitioning/
user_pref("network.cookie.cookieBehavior", 5); // changes to 5 when Enhanced Tracking Protection is set to "Strict"
user_pref("browser.contentblocking.state-partitioning.mvp.ui.enabled", true); // default
user_pref(
  "browser.contentblocking.reject-and-isolate-cookies.preferences.ui.enabled",
  true
); // default

// PREF: Network Partitioning
// Networking-related APIs are not intended to be used for websites to store data, but they can be abused for
// cross-site tracking. Network APIs and caches are permanently partitioned by the top-level site.
// Network Partitioning (isolation) will allow Firefox to associate resources on a per-website basis rather than together
// in the same pool. This includes cache, favicons, CSS files, images, and even speculative connections.
// [1] https://www.zdnet.com/article/firefox-to-ship-network-partitioning-as-a-new-anti-tracking-defense/
// [2] https://developer.mozilla.org/en-US/docs/Web/Privacy/State_Partitioning#network_partitioning
// [3] https://blog.mozilla.org/security/2021/01/26/supercookie-protections/
user_pref("privacy.partition.network_state", true); // default

// PREF: Redirect Tracking Prevention
// All storage is cleared (more or less) daily from origins that are known trackers and that
// haven’t received a top-level user interaction (including scroll) within the last 45 days.
// [1] https://www.ghacks.net/2020/08/06/how-to-enable-redirect-tracking-in-firefox/
// [2] https://www.cookiestatus.com/firefox/#other-first-party-storage
// [3] https://developer.mozilla.org/en-US/docs/Mozilla/Firefox/Privacy/Redirect_tracking_protection
// [4] https://www.ghacks.net/2020/03/04/firefox-75-will-purge-site-data-if-associated-with-tracking-cookies/
// [5] https://github.com/arkenfox/user.js/issues/1089
user_pref("privacy.purge_trackers.enabled", true); // default

// PREF: Hyperlink Auditing (click tracking).
user_pref("browser.send_pings", false); // default
// enforce same host just in case.
// user_pref("browser.send_pings.require_same_host", true);

// PREF: sending additional analytics to web servers
// [1] https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon
user_pref("beacon.enabled", false);

// PREF: battery status tracking
user_pref("dom.battery.enabled", false);

// PREF: set a default permission for Virtual Reality
// 0=always ask (default), 1=allow, 2=block
// [SETTING] to add site exceptions: Ctrl+I>Permissions>Access Virtual Reality Devices
// [SETTING] to manage site exceptions: Options>Privacy & Security>Permissions>Virtual Reality>Settings
// user_pref("permissions.default.xr", 2);

// PREF: CRLite
// This will reduce the number of times an OCSP server needs to be contacted and therefore increase privacy.
// [1] https://blog.mozilla.org/security/2020/01/09/crlite-part-2-end-to-end-design/
// [2] https://github.com/arkenfox/user.js/issues/1065
user_pref("security.pki.crlite_mode", 2);
user_pref("security.remote_settings.crlite_filters.enabled", true);

// PREF: Local Storage Next Generation (LSNG) (DOMStorage)
// [1] https://bugzilla.mozilla.org/show_bug.cgi?id=1286798
user_pref("dom.storage.next_gen", true);

// PREF: SameStie Cookies
// [1] https://hacks.mozilla.org/2020/08/changes-to-samesite-cookie-behavior/
// [2] https://web.dev/samesite-cookies-explained/
user_pref("network.cookie.sameSite.laxByDefault", true);
user_pref("network.cookie.sameSite.noneRequiresSecure", true);
user_pref("network.cookie.sameSite.schemeful", true);

// PREF: disable cache
// user_pref("browser.cache.disk.enable", true); // default

// PREF: disable offline cache (appCache)
// [WARNING] The API is easily fingerprinted, do not disable!
// [1] https://github.com/arkenfox/user.js/issues/1055
// user_pref("browser.cache.offline.enable", false);

// PREF: WebRTC Global Mute Toggles
user_pref("privacy.webrtc.globalMuteToggles", true);

/******************************************************************************
 * SECTION: CLEARING DATA DEFAULTS                           *
 ******************************************************************************/

// PREF: reset default items to clear with Ctrl-Shift-Del
// This dialog can also be accessed from the menu History>Clear Recent History
// Firefox remembers your last choices. This will reset them when you start Firefox.
// Regardless of what you set privacy.cpd.downloads to, as soon as the dialog
// for "Clear Recent History" is opened, it is synced to the same as 'history'.
// user_pref("privacy.cpd.downloads", true); // not used, see note above
user_pref("privacy.cpd.history", true); // Browsing & Download History
user_pref("privacy.cpd.formdata", true); // Form & Search History
user_pref("privacy.cpd.offlineApps", true); // Offline Website Data
user_pref("privacy.cpd.cache", true); // Cache
user_pref("privacy.cpd.cookies", false); // Cookies
user_pref("privacy.cpd.sessions", false); // Active Logins
user_pref("privacy.cpd.siteSettings", false); // Site Preferences

// PREF: reset default 'Time range to clear' for 'Clear Recent History'.
// Firefox remembers your last choice. This will reset the value when you start Firefox.
// 0=everything, 1=last hour, 2=last two hours, 3=last four hours,
// 4=today, 5=last five minutes, 6=last twenty-four hours
// The values 5 + 6 are not listed in the dropdown, which will display a
// blank value if they are used, but they do work as advertised.
user_pref("privacy.sanitize.timeSpan", 0);

// PREF: set History section to show all options
user_pref("privacy.history.custom", true);

// PREF: limit third-party cookies
// Because of dFPI and our tracking protection(s), we will only clear nonsecure cookies each session.
// user_pref("network.cookie.thirdparty.sessionOnly", false);
// user_pref("network.cookie.thirdparty.nonsecureSessionOnly", true);

// PREF: delete all cookies after a certain period of time
// ALTERNATIVE: Use a cookie manager extension
// user_pref("network.cookie.lifetimePolicy", 3);
// user_pref("network.cookie.lifetime.days", 7);

/******************************************************************************
 * SECTION: SPECULATIVE CONNECTIONS                           *
 ******************************************************************************/

// [NOTE] Firefox 85+ partitions (isolates) pooled connections, prefetch connections, pre-connect connections,
// speculative connections, TLS session identifiers, and other connections. We can take advantage of the speed of
// pre-connections while preserving privacy. Users may harden these settings to their preference.
// For more information, see "PREF: State Paritioning" and "PREF: Network Partitioning".

// [NOTE] uBlock Origin overrides Firefox defaults and sets these settings to false. To enable:
// [SETTINGS] uBlock Origin -> Extension options -> Settings -> Privacy -> uncheck "Disable pre-fetching"

// PREF: Network Predictor
// Keeps track of components that were loaded during page visits so that the browser knows next time
// which resources to request from the server: It uses a local file to remember which resources were
// needed when the user visits a webpage (such as image.jpg and script.js), so that the next time the
// user mouseovers a link to that webpage, this history can be used to predict what resources will
// be needed rather than wait for the document to link those resources.
// Only performs pre-connect, not prefetch, by default. No data is actually sent to the site until a user actively clicks a link.
// [NOTE] DNS pre-resolve and TCP preconnect (which includes SSL handshake). Honors settings in Private Browsing to erase data.
// [1] https://wiki.mozilla.org/Privacy/Reviews/Necko
// [2] https://www.ghacks.net/2014/05/11/seer-disable-firefox/
// [3] https://github.com/dillbyrne/random-agent-spoofer/issues/238#issuecomment-110214518
// [4] https://www.igvita.com/posa/high-performance-networking-in-google-chrome/#predictor
user_pref("network.predictor.enabled", false);
// Fetch critical resources on the page ahead of time as determined by the local file, to accelerate rendering of the page.
// user_pref("network.predictor.enable-hover-on-ssl", true);
// user_pref("network.predictor.enable-prefetch", true);

// PREF: DNS pre-resolve <link rel="dns-prefetch">
// Resolve hostnames ahead of time, to avoid DNS latency.
// [NOTE] Only allowing secure requests.
// [1] https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-DNS-Prefetch-Control
// [2] https://css-tricks.com/prefetching-preloading-prebrowsing/#dns-prefetching
// [3] https://www.keycdn.com/blog/resource-hints#2-dns-prefetching
// [4] http://www.mecs-press.org/ijieeb/ijieeb-v7-n5/IJIEEB-V7-N5-2.pdf
user_pref("network.dns.disablePrefetch", true);
user_pref("network.dns.disablePrefetchFromHTTPS", true); // default

// PREF: Preconnect to the autocomplete URL in the address bar
// Firefox preloads URLs that autocomplete when a user types into the address bar.
// Connects to destination server ahead of time, to avoid TCP handshake latency.
// [NOTE] Firefox will perform DNS lookup and TCP and TLS handshake, but will not start sending or receiving HTTP data.
// [1] https://www.ghacks.net/2017/07/24/disable-preloading-firefox-autocomplete-urls/
user_pref("browser.urlbar.speculativeConnect.enabled", false);

// PREF: Link prefetching <link rel="prefetch">
// A directive that tells a browser to fetch a resource that will probably be needed for the next navigation.
// The resource will be fetched with extremely low priority (since everything the browser knows
// is needed in the current page is more important than a resource that we guess might be needed in the next one).
// Prefetch’s main use case is speeding up the next navigation rather than the current one.
// When the user clicks on a link, or initiates any kind of page load, link prefetching will stop and any prefetch hints will be discarded.
// [1] https://developer.mozilla.org/en-US/docs/Web/HTTP/Link_prefetching_FAQ#Privacy_implications
// [2] http://www.mecs-press.org/ijieeb/ijieeb-v7-n5/IJIEEB-V7-N5-2.pdf
// [3] https://timkadlec.com/remembers/2020-06-17-prefetching-at-this-age/
// [4] https://3perf.com/blog/link-rels/#prefetch
user_pref("network.prefetch-next", false);

// PREF: Prefetch links upon hover
// When you hover over links, connections are established to linked domains and servers automatically to speed up the loading
// process should you click on the link. To improve the loading speed, Firefox will open predictive connections to sites when
// the user hovers their mouse over. In case the user follows through with the action, the page can begin loading faster since
// some of the work was already started in advance. Focuses on fetching a resource for the NEXT navigation.
// [NOTE] TCP and SSL handshakes are set up in advance but page contents are not downloaded until a click on the link is registered.
// [1] https://news.slashdot.org/story/15/08/14/2321202/how-to-quash-firefoxs-silent-requests
// [2] https://www.keycdn.com/blog/resource-hints#prefetch
// [3] https://3perf.com/blog/link-rels/#prefetch
user_pref("network.http.speculative-parallel-limit", 0);

// PREF: Preload <link rel=preload>
// Tells the browser to download and cache a resource (like a script or a stylesheet) as soon as possible.
// The browser doesn’t do anything with the resource after downloading it. Scripts aren’t executed, stylesheets
// aren’t applied. It’s just cached – so that when something else needs it, it’s available immediately.
// Focuses on fetching a resource for the CURRENT navigation.
// [NOTE] Unlike other pre-connection tags (except modulepreload), this tag is mandatory for the browser.
// A browser is required to download the resource specified in <link rel="preload">. With other tags described here,
// a browser is free to skip preloading the resource if it decides to (e.g. if the network is slow).
// [TESTING] May possibly interfear with content blocking on the webpage.
// [1] https://bugzilla.mozilla.org/show_bug.cgi?id=1639607
// [2] https://w3c.github.io/preload/
// [3] https://3perf.com/blog/link-rels/#preload
// [4] https://medium.com/reloading/preload-prefetch-and-priorities-in-chrome-776165961bbf
// [5] https://www.smashingmagazine.com/2016/02/preload-what-is-it-good-for/#how-can-preload-do-better
// [6] https://www.keycdn.com/blog/resource-hints#preload
user_pref("network.preload", false);

// PREF: New tab preload
// [WARNING] Disabling this causes a delay when opening a new tab in Firefox.
// [1] https://wiki.mozilla.org/Tiles/Technical_Documentation#Ping
// [2] https://gecko.readthedocs.org/en/latest/browser/browser/DirectoryLinksProvider.html#browser-newtabpage-directory-source
// [3] https://gecko.readthedocs.org/en/latest/browser/browser/DirectoryLinksProvider.html#browser-newtabpage-directory-ping
user_pref("browser.newtab.preload", true); // default

/******************************************************************************
 * SECTION: SEARCH / URL BAR                              *
 ******************************************************************************/

// PREF: do not trim certain parts of the URL
// [1] https://developer.mozilla.org/en-US/docs/Mozilla/Preferences/Preference_reference/browser.urlbar.trimURLs#values
// user_pref("browser.urlbar.trimURLs", false);

// PREF: Enable a seperate search engine for Private Windows
// Remember to go into Preferences -> Search and select another search provider (like DuckDuckGo)
user_pref("browser.search.separatePrivateDefault", true);
user_pref("browser.search.separatePrivateDefault.ui.enabled", true);

// PREF: Disable live search engine suggestions (Google, Bing, etc.)
// [WARNING] Search engines keylog every character you type from the URL bar
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.search.suggest.enabled.private", false); // default

// PREF: URL bar domain guessing
// Domain guessing intercepts DNS "hostname not found errors" and resends a
// request (e.g. by adding www or .com). This is inconsistent use (e.g. FQDNs), does not work
// via Proxy Servers (different error), is a flawed use of DNS (TLDs: why treat .com
// as the 411 for DNS errors?), privacy issues (why connect to sites you didn't
// intend to), can leak sensitive data (e.g. query strings: e.g. Princeton attack),
// and is a security risk (e.g. common typos & malicious sites set up to exploit this).
user_pref("browser.fixup.alternate.enabled", false);

// PREF: "Not Secure" text in the URL bar on HTTP sites
user_pref("security.insecure_connection_text.enabled", true);
user_pref("security.insecure_connection_text.pbmode.enabled", true);

// PREF: Disable location bar autofill
// https://support.mozilla.org/en-US/kb/address-bar-autocomplete-firefox#w_url-autocomplete
// user_pref("browser.urlbar.autoFill", false);

// PREF: Enforce Punycode for Internationalized Domain Names to eliminate possible spoofing
// Firefox has some protections, but it is better to be safe than sorry.
// [!] Might be undesirable for non-latin alphabet users since legitimate IDN's are also punycoded.
// [TEST] https://www.xn--80ak6aa92e.com/ (www.apple.com)
// [1] https://wiki.mozilla.org/IDN_Display_Algorithm
// [2] https://en.wikipedia.org/wiki/IDN_homograph_attack
// [3] CVE-2017-5383: https://www.mozilla.org/security/advisories/mfsa2017-02/
// [4] https://www.xudongz.com/blog/2017/idn-phishing/
user_pref("network.IDN_show_punycode", true);

/******************************************************************************
 * SECTION: HTTPS-FIRST POLICY                          *
 ******************************************************************************/

// PREF: HTTPS-First Policy
// Firefox attempts to make all connections to websites secure, and falls back to insecure
// connections only when a website does not support it. Unlike HTTPS-Only Mode, Firefox
// will NOT ask for your permission before connecting to a website that doesn’t support secure connections.
// [NOTE] HTTPS-Only Mode needs to be disabled for HTTPS First to work.
// [TEST] http://example.com [upgrade]
// [1] https://bugzilla.mozilla.org/show_bug.cgi?id=1706552
user_pref("dom.security.https_first", true);
user_pref("dom.security.https_first_pbm", true); // default

/******************************************************************************
 * SECTION: HTTPS-ONLY MODE                              *
 ******************************************************************************/

// Firefox displays a warning page if HTTPS is not supported by a server. Options to use HTTP are then provided.
// [NOTE] When "https_only_mode" (all windows) is true, "https_only_mode_pbm" (private windows only) is ignored.
// [SETTING] to add site exceptions: Padlock>HTTPS-Only mode>On/Off/Off temporarily
// [SETTING] Privacy & Security>HTTPS-Only Mode
// [TEST] http://example.com [upgrade]
// [TEST] http://neverssl.org/ [no upgrade]
// [1] https://bugzilla.mozilla.org/1613063
// [2] https://blog.mozilla.org/security/2020/11/17/firefox-83-introduces-https-only-mode/

// PREF: Disable HTTPS-only Mode for Normal Browsing windows
user_pref("dom.security.https_only_mode", false); // default
user_pref("dom.security.https_only_mode_ever_enabled", false); // default

// PREF: Enable HTTPS-only Mode for Private Browsing windows
user_pref("dom.security.https_only_mode_pbm", true);
user_pref("dom.security.https_only_mode_ever_enabled_pbm", true);

// PREF: Disable HTTP background requests in HTTPS-only Mode
// When attempting to upgrade, if the server doesn't respond within 3 seconds, Firefox
// sends HTTP requests in order to check if the server supports HTTPS or not.
// This is done to avoid waiting for a timeout which takes 90 seconds.
// [1] https://bugzilla.mozilla.org/buglist.cgi?bug_id=1642387,1660945
// [2] https://blog.mozilla.org/attack-and-defense/2021/03/10/insights-into-https-only-mode/
user_pref("dom.security.https_only_mode_send_http_background_request", false);

// PREF: Enable HTTPS-Only mode for local resources
// user_pref("dom.security.https_only_mode.upgrade_local", true);

/******************************************************************************
 * SECTION: DNS-over-HTTPS                                                    *
 ******************************************************************************/

// PREF: DNS-over-HTTPS (DoH) provider
// Mozilla uses Cloudfare by default. NextDNS is also an option.
// [NOTE] You can set this to 0 if you are already using secure DNS for your entire network (e.g. OS-level, router-level).
// [1] https://hacks.mozilla.org/2018/05/a-cartoon-intro-to-dns-over-https/
// [2] https://www.internetsociety.org/blog/2018/12/dns-privacy-support-in-mozilla-firefox/
// 0=off, 2=TRR preferred, 3=TRR only, 5=TRR disabled
user_pref("network.trr.mode", 2);
user_pref("network.trr.request_timeout_ms", 4000); /* default=1500 */
// user_pref("network.trr.request_timeout_mode_trronly_ms", 30000); // default
// user_pref("network.trr.send_user-agent_headers", false); // default
user_pref("network.dns.skipTRR-when-parental-control-enabled", false);

// PREF: Force FF to always use your custom DNS resolver
// You will type between the "" for both prefs.
// I recommend creating your own URI with NextDNS for both privacy and security.
// https://nextdns.io
user_pref("network.trr.uri", "");
user_pref("network.trr.custom_uri", "");

/******************************************************************************
 * SECTION: ESNI / ECH                            *
 ******************************************************************************/

// PREF: Enable Encrypted Client Hello (ECH)
// Evolution of ESNI.
// [!] Breaks Discord login through Firefox.
// ESNI: https://www.eff.org/deeplinks/2018/09/esni-privacy-protecting-upgrade-https/
// ECH: https://blog.mozilla.org/security/2021/01/07/encrypted-client-hello-the-future-of-esni-in-firefox/
user_pref("network.dns.echconfig.enabled", true);
user_pref("network.dns.use_https_rr_as_altsvc", true);

/******************************************************************************
 * SECTION: PASSWORDS                             *
 ******************************************************************************/

// PREF: Disable autofilling saved passwords on HTTP pages and show warning
// [1] https://bugzilla.mozilla.org/buglist.cgi?bug_id=1217152,1319119
user_pref("signon.autofillForms.http", false);
user_pref("security.insecure_field_warning.contextual.enabled", true);

// Disable capturing credentials in private browsing
user_pref("signon.privateBrowsingCapture.enabled", false);

// PREF: Disable Firefox Lockwise (about:logins)
// [1] https://lockwise.firefox.com/
// [2] https://support.mozilla.org/en-US/kb/firefox-lockwise-managing-account-data
user_pref("signon.management.page.breach-alerts.enabled", false);
user_pref("signon.management.page.breachAlertUrl", "");
user_pref("browser.contentblocking.report.lockwise.enabled", false);
user_pref("browser.contentblocking.report.lockwise.how_it_works.url", "");

// PREF: Disable Firefox built-in password generator
// Create passwords with random characters and numbers.
// [NOTE] Doesn't work with Lockwise disabled!
// [1] https://wiki.mozilla.org/Toolkit:Password_Manager/Password_Generation
user_pref("signon.generation.available", false);
user_pref("signon.generation.enabled", false);

// PREF: Disable password manager
// NOTE” This does not clear any passwords already saved
user_pref("signon.rememberSignons", false);
user_pref("signon.rememberSignons.visibilityToggle", false);
user_pref("signon.schemeUpgrades", false);
user_pref("signon.showAutoCompleteFooter", false);
user_pref("signon.autologin.proxy", false);
user_pref("signon.debug", false);

// PREF: Disable Firefox import password from signons.sqlite file
// [1] https://support.mozilla.org/en-US/questions/1020818
user_pref("signon.management.page.fileImport.enabled", false);
user_pref("signon.importedFromSqlite", false);
user_pref("signon.recipes.path", "");

// PREF: Disable auto-filling username & password form fields
// Can leak in cross-site forms and be spoofed
// NOTE: Username and password is still available when you enter the field
user_pref("signon.autofillForms", false);
user_pref("signon.autofillForms.autocompleteOff", true);
user_pref("signon.showAutoCompleteOrigins", false);

// PREF: Disable websites autocomplete
// Don't let sites dictate use of saved logins and passwords.
user_pref("signon.storeWhenAutocompleteOff", false);

// PREF: Disable formless login capture
// [1] https://bugzilla.mozilla.org/show_bug.cgi?id=1166947
user_pref("signon.formlessCapture.enabled", false);

// PREF: Disable Firefox Monitor
user_pref("extensions.fxmonitor.enabled", false);

/****************************************************************************
 * SECTION: ADDRESS + CREDIT CARD MANAGER                                   *
 ****************************************************************************/

// PREF: Disable Form Autofill
// NOTE: stored data is not secure (uses a JSON file)
// [1] https://wiki.mozilla.org/Firefox/Features/Form_Autofill
// [2] https://www.ghacks.net/2017/05/24/firefoxs-new-form-autofill-is-awesome
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.available", "off");
user_pref("extensions.formautofill.creditCards.available", false);
user_pref("extensions.formautofill.creditCards.enabled", false);
user_pref("extensions.formautofill.heuristics.enabled", false);
user_pref("browser.formfill.enable", false);

/******************************************************************************
 * SECTION: MIXED CONTENT + CROSS-SITE                             *
 ******************************************************************************/

// PREF: limit (or disable) HTTP authentication credentials dialogs triggered by sub-resources
// Hardens against potential credentials phishing
// 0=don't allow sub-resources to open HTTP authentication credentials dialogs
// 1=don't allow cross-origin sub-resources to open HTTP authentication credentials dialogs
// 2=allow sub-resources to open HTTP authentication credentials dialogs (default)
// [1] https://www.fxsitecompat.com/en-CA/docs/2015/http-auth-dialog-can-no-longer-be-triggered-by-cross-origin-resources/
user_pref("network.auth.subresource-http-auth-allow", 1);

// PREF: disable automatic authentication on Microsoft sites [WINDOWS]
// [1] https://bugzilla.mozilla.org/buglist.cgi?bug_id=1695693,1719301
// user_pref("network.http.windows-sso.enabled", false);

// PREF: Block insecure active content (scripts) on HTTPS pages.
// [1] https://trac.torproject.org/projects/tor/ticket/21323
user_pref("security.mixed_content.block_active_content", true); // default

// PREF: Block insecure passive content (images) on HTTPS pages.
// user_pref("security.mixed_content.block_display_content", true);

// PREF: Upgrade passive content to use HTTPS on secure pages.
user_pref("security.mixed_content.upgrade_display_content", true);

// PREF: Block insecure downloads from secure sites
// [1] https://bugzilla.mozilla.org/show_bug.cgi?id=1660952
user_pref("dom.block_download_insecure", true);

// PREF: allow PDFs to load javascript
// https://www.reddit.com/r/uBlockOrigin/comments/mulc86/firefox_88_now_supports_javascript_in_pdf_files/
user_pref("pdfjs.enableScripting", false);

// PREF: Disable bypassing 3rd party extension install prompts
// [1] https://bugzilla.mozilla.org/buglist.cgi?bug_id=1659530,1681331
user_pref("extensions.postDownloadThirdPartyPrompt", false);

// PREF: Disable permissions delegation
// Currently applies to cross-origin geolocation, camera, mic and screen-sharing
// permissions, and fullscreen requests. Disabling delegation means any prompts
// for these will show/use their correct 3rd party origin
// [1] https://groups.google.com/forum/#!topic/mozilla.dev.platform/BdFOMAuCGW8/discussion
user_pref("permissions.delegation.enabled", false); // default

// PREF: Enforce TLS 1.0 and 1.1 downgrades as session only
user_pref("security.tls.version.enable-deprecated", false); // default

// PREF: Enable (limited but sufficient) window.opener protection
// Makes rel=noopener implicit for target=_blank in anchor and area elements when no rel attribute is set.
// https://jakearchibald.com/2016/performance-benefits-of-rel-noopener/
user_pref("dom.targetBlankNoOpener.enabled", true); // default

// PREF: Enable "window.name" protection
// If a new page from another domain is loaded into a tab, then window.name is set to an empty string. The original
// string is restored if the tab reverts back to the original page. This change prevents some cross-site attacks.
user_pref("privacy.window.name.update.enabled", true); // default

// PREF: Downgrade Cross-Origin (Third-Party) Referers
// CROSS ORIGIN: control when to send a referer
// [1] https://github.com/arkenfox/user.js/issues/1077
// 0=always (default), 1=only if base domains match, 2=only if hosts match
user_pref("network.http.referer.XOriginPolicy", 0); // default
// Control the amount of information to send.
// 0=send full URI (default), 1=scheme+host+port+path, 2=scheme+host+port
user_pref("network.http.referer.XOriginTrimmingPolicy", 2);

/******************************************************************************
 * SECTION: VARIOUS                            *
 ******************************************************************************/

// PREF: Disable favicons in shortcuts
// URL shortcuts use a cached randomly named .ico file which is stored in your
// profile/shortcutCache directory. The .ico remains after the shortcut is deleted.
// If set to false then the shortcuts use a generic Firefox icon
// user_pref("browser.shell.shortcutFavicons", false);

// PREF: Enable FTP protocol
// Firefox redirects any attempt to load a FTP resource to the default search engine if the FTP protocol is disabled.
// [1] https://www.ghacks.net/2018/02/20/firefox-60-with-new-preference-to-disable-ftp/
// user_pref("network.ftp.enabled", true);

// PREF: Decode URLs in other languages
// [NOTE] I leave this off because it has unintended consequecnes when copy+paste links with underscores.
// [1] https://bugzilla.mozilla.org/show_bug.cgi?id=1320061
// user_pref("browser.urlbar.decodeURLsOnCopy", true);

// PREF: Number of usages of the web console.
// If this is less than 5, then pasting code into the web console is disabled
// user_pref("devtools.selfxss.count", 5);

/******************************************************************************
 * SECTION: GOOGLE SAFE BROWSING (GSB)                                        *
 ******************************************************************************/

// PREF: GSB checks for downloads (remote)
// To verify the safety of certain executable files, Firefox may submit some information about the
// file, including the name, origin, size and a cryptographic hash of the contents, to the Google
// Safe Browsing service which helps Firefox determine whether or not the file should be blocked.
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.url", "");

// PREF: GSB, master switch
// WARNING: Be sure to have alternate security measures if you disable Safe Browsing.
// Increased privacy away from Google, but less protection against threats.
// Privacy & Security>Security>... "Block dangerous and deceptive content"
// [1] https://www.wikiwand.com/en/Google_Safe_Browsing#/Privacy
// [2] https://ashkansoltani.org/2012/02/25/cookies-from-nowhere
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);

// PREF: GSB checking downloads local + remote, master switch
// Privacy & Security>Security>... "Block dangerous downloads"
user_pref("browser.safebrowsing.downloads.enabled", false);

// PREF: GSB checks for unwanted software
// Privacy & Security>Security>... "Warn you about unwanted and uncommon software"
user_pref(
  "browser.safebrowsing.downloads.remote.block_potentially_unwanted",
  false
);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);

// PREF: 'ignore this warning' on Google Safe Browsing warnings
// If clicked, it bypasses the block for that session. This is a means for admins to enforce SB.
// [1] https://bugzilla.mozilla.org/1226490
// user_pref("browser.safebrowsing.allowOverride", false);
// user_pref("browser.safebrowsing.blockedURIs.enabled", true);

/******************************************************************************
 * SECTION: MOZILLA                                                   *
 ******************************************************************************/

// PREF: Use Mozilla geolocation service instead of Google when geolocation is enabled
// user_pref("permissions.default.geo", 0);
user_pref(
  "geo.provider.network.url",
  "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%"
);
// Enable logging geolocation to the console
// user_pref("geo.provider.network.logging.enabled", true);

// PREF: Enforce Firefox blocklist for extensions + No hiding tabs
// This includes updates for "revoked certificates".
// [1] https://blog.mozilla.org/security/2015/03/03/revoking-intermediate-certificates-introducing-onecrl/
// [2] https://trac.torproject.org/projects/tor/ticket/16931
user_pref("extensions.blocklist.enabled", true); // default

// PREF: disable auto-INSTALLING Firefox updates [NON-WINDOWS FF65+]
// [NOTE] In FF65+ on Windows this SETTING (below) is now stored in a file and the pref was removed
// [SETTING] General>Firefox Updates>Check for updates but let you choose to install them
user_pref("app.update.auto", false);

// PREF: disable auto-INSTALLING Firefox updates via a background service [FF90+] [WINDOWS]
// [SETTING] General>Firefox Updates>Automatically install updates>When Firefox is not running
// [1] https://support.mozilla.org/kb/enable-background-updates-firefox-windows ***/
user_pref("app.update.background.scheduling.enabled", false);

// PREF: Disable automatic extension updates
// user_pref("extensions.update.enabled", false);
// user_pref("extensions.autoupdate.enabled", false);
// user_pref("extensions.update.url", "");
// user_pref("extensions.update.background.url", "");

/******************************************************************************
 * SECTION: TELEMETRY                                                   *
 ******************************************************************************/

// PREF: disable all the various Mozilla telemetry, studies, reports, etc.
// Telemtry
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.server", "data:,");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);

// Corroborator
user_pref("corroborator.enabled", false);

// Telemetry Coverage
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.opt-out", true);
// user_pref("toolkit.coverage.endpoint.base", "");

// Health Reports
// [SETTING] Privacy & Security>Firefox Data Collection & Use>Allow Firefox to send technical data.
user_pref("datareporting.healthreport.uploadEnabled", false);

// New data submission, master kill switch
// If disabled, no policy is shown or upload takes place, ever
// [1] https://bugzilla.mozilla.org/1195552
user_pref("datareporting.policy.dataSubmissionEnabled", false);

// PREF: Studies
// [SETTING] Privacy & Security>Firefox Data Collection & Use>Allow Firefox to install and run studies
user_pref("app.shield.optoutstudies.enabled", false);
// user_pref("messaging-system.rsexperimentloader.enabled", false); [???]

// Personalized Extension Recommendations in about:addons and AMO
// [NOTE] This pref has no effect when Health Reports are disabled.
// [SETTING] Privacy & Security>Firefox Data Collection & Use>Allow Firefox to make personalized extension recommendations
user_pref("browser.discovery.enabled", false);

// PREF: disable crash reports
// user_pref("breakpad.reportURL", "");
user_pref("browser.tabs.crashReporting.sendReport", false);
user_pref("browser.crashReports.unsubmittedCheck.enabled", false); // default
// PREF: backlogged crash reports
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false);

// PREF: Captive Portal detection
// [WARNING] Do NOT use for mobile devices. May NOT be able to use Firefox on public wifi (hotels, coffee shops, etc).
// [1] https://www.eff.org/deeplinks/2017/08/how-captive-portals-interfere-wireless-security-and-privacy
// [2] https://wiki.mozilla.org/Necko/CaptivePortal
// user_pref("captivedetect.canonicalURL", "");
// user_pref("network.captive-portal-service.enabled", false);

// PREF: Network Connectivity checks
// [WARNING] Do NOT use for mobile devices. May NOT be able to use Firefox on public wifi (hotels, coffee shops, etc).
// [1] https://bugzilla.mozilla.org/1460537
// user_pref("network.connectivity-service.enabled", false);

// PREF: software that continually reports what default browser you are using
user_pref("default-browser-agent.enabled", false);

// PREF: "report extensions for abuse"
user_pref("extensions.abuseReport.enabled", false);

// PREF: Normandy/Shield [extensions tracking]
// Shield is an telemetry system (including Heartbeat) that can also push and test "recipes"
user_pref("app.normandy.enabled", false);
// user_pref("app.normandy.api_url", "");

// PREF: PingCentre telemetry (used in several System Add-ons)
// Currently blocked by 'datareporting.healthreport.uploadEnabled'
user_pref("browser.ping-centre.telemetry", false);

// PREF: Activity Stream telemetry
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);

user_perf("network.dns.disableIPv6", true);

// RFP
user_pref("privacy.resistFingerprinting", true);
user_pref("privacy.resistFingerprinting.block_mozAddonManager", true); // [HIDDEN PREF]
