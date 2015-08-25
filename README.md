# zaku:lazy-analytics

Alanytics script which can be lazy loaded by js

## Install

```bash
meteor add zaku:lazy-analytics
```

## Usage

```js
var analytics = {account: 'UA-XXXXXXX-Y'};

Meteor.Router.add({
  '/': function() {
    analytics.pageview();
    return 'home';}
})
```

In your controller code:
```js
analytics.pageview();
analytics.pageview("/hello");


analytics.event("account","signin");
analytics.event("account","signin","DataRiot");
analytics.event("account","signin","DataRiot", 2);
```

### Cookie Options & Advanced Features

You can also [provide options](https://developers.google.com/analytics/devguides/collection/analyticsjs/domains) for the Google Analytics cookie:

```json
{
  "account":"UA-XXXXXXX-Y",
  "cookieName": "new_cookie_name",
  "cookieDomain": "mynew.domain.com",
  "cookieExpires": 60 * 60 * 24 * 28,  /* Time in seconds. */
  "trackInterests": true,  /* Enable also GA website and */
  "trackInPage": true      /* force/ignore the Google check. */
}
```

### Debug Mode

If you pass `debug: true` as a setting, the package will output console logs on `analytics.pageview()` and `analytics.event()`.