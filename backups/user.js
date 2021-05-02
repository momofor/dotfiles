/* 0000: disable about:config warning
 * FF73-86: chrome://global/content/config.xhtml ***/
user_pref("general.warnOnAboutConfig", false); // XHTML version
user_pref("browser.aboutConfig.showWarning", false); // HTML version [FF71+]
user_pref("network.http.pipelining", true);
user_pref("network.http.proxy.pipelining", true);
user_pref("network.http.pipelining.maxrequests", 100);
user_pref("geo.enabled ", false);
user_pref("plugin.scan.plid.all ", false);

user_pref("browser.pingcentre.telemetry ", false);
user_pref("devtools.onboarding.telemetry-logged ", false);
user_pref("media.wmf.deblacklisting-for-telemetry-in-gpu-process ", false);
user_pref("toolkit.telemetry.archive.enabled ", false);
user_pref("toolkit.telemetry.bhrping.enabled ", false);
user_pref("toolkit.telemetry.firstshutdownping.enabled ", false);
user_pref("toolkit.telemetry.hybridcontent.enabled ", false);
user_pref("toolkit.telemetry.newprofileping.enabled ", false);
user_pref("toolkit.telemetry.unified ", false);
user_pref("toolkit.telemetry.updateping.enabled ", false);
user_pref("toolkit.telemetry.shutdownpingsender.enabled ", false);

user_pref("content.notify.interval ", 200000);
user_pref("content.notify.ontimer ", true);
user_pref("content.switch.threshold ", 250000);
user_pref("content.max.tokenizing.time", 600000);
user_pref("browser.display.show_image_placeholders ", false);
user_pref("browser.cache.memory.capacity ", 2048000);
user_pref("network.prefetch-next", true);
user_pref("gfx.webrender.all ", true);
/* performance */
user_pref("dom.ipc.processCount", 16);
user_pref("network.http.max-persistent-connections-per-server", 10);
user_pref("network.http.max-connections", 1500);

/*
 * fast fox
 */
user_pref("dom.image-lazy-loading.enabled", true);
user_pref("browser.sessionstore.restore_tabs_lazily", true);
user_pref("browser.sessionstore.restore_on_demand", true);
user_pref("browser.sessionstore.restore_pinned_tabs_on_demand", true);
user_pref("browser.startup.preXulSkeletonUI", false);

// preload
user_pref("network.dns.disablePrefetch", true);
user_pref("network.dns.disablePrefetchFromHTTPS", true);
user_pref("browser.urlbar.speculativeConnect.enabled", false);
user_pref("network.prefetch-next", false);
user_pref("network.http.speculative-parallel-limit", 0);
user_pref("network.preload", false);
user_pref("network.predictor.enabled", false);
user_pref("network.predictor.enable-hover-on-ssl", false);
user_pref("network.predictor.enable-prefetch", false);
user_pref("browser.newtab.preload", true);

// doh
user_pref("network.trr.send_user-agent_headers", false);
user_pref("network.dns.skipTRR-when-parental-control-enabled", false);

/** TELEMETRY ***/
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.server", "data:,");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);
user_pref("corroborator.enabled", false);
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.opt-out", true);
user_pref("toolkit.coverage.endpoint.base", "");
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("browser.discovery.enabled", false);
user_pref("breakpad.reportURL", "");
user_pref("browser.tabs.crashReporting.sendReport", false);
user_pref("browser.crashReports.unsubmittedCheck.enabled", false);
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false);
user_pref("default-browser-agent.enabled", false);
user_pref("extensions.abuseReport.enabled", false);
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");
user_pref("browser.ping-centre.telemetry", false);
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);
