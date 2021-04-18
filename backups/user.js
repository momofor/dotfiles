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
user_pref("ontent.notify.interval ", 500000);
user_pref("content.notify.ontimer ", true);
user_pref("content.switch.threshold ", 250000);
user_pref("browser.cache.memory.capacity ", 65536);
