load = (i, s, o, g, r, a, m) ->
  i['GoogleAnalyticsObject'] = r
  i[r] = i[r] or ->
    (i[r].q = i[r].q or []).push arguments
    return

  i[r].l = 1 * new Date
  a = s.createElement(o)
  m = s.getElementsByTagName(o)[0]
  a.async = 1
  a.src = g
  m.parentNode.insertBefore a, m
  return

load window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga'

class @GAnalytics
  constructor: (@settings) ->
    gaSettings = @settings
    gaConfig = {}

    gaConfig.cookieName = gaSettings.cookieName if gaSettings.cookieName?
    gaConfig.cookieDomain = gaSettings.cookieDomain if gaSettings.cookieDomain?
    gaConfig.cookieExpires = gaSettings.cookieExpires if gaSettings.cookieExpires?

    gaConfig = 'auto' if Object.keys(gaConfig).length == 0

    ga 'create', gaSettings.account, gaConfig
    ga 'require', 'displayfeatures' if gaSettings?.trackInterests
    ga 'require', 'linkid', 'linkid.js' if gaSettings?.trackInPage

  pageview: (pageLocation) ->
    pageLocation = window.location.pathname if !pageLocation
    console.log 'Logging pageview: ' + pageLocation if ! !@settings.debug
    ga 'send', 'pageview', pageLocation

  event: (category, action, label, value) ->
    console.log 'Logging event: ' + category + ' | ' + action + ' | ' + label + ' | ' + value if ! !@settings.debug
    ga 'send', 'event', category, action, label, value
