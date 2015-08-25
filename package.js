Package.describe({
  name: 'zaku:lazy-analytics',
  version: '0.0.1',
  summary: 'Load analycis with js',
  git: 'https://github.com/zaku-eu/meteor-lazy-analytics.git',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.0.3.1');
  api.use([
    'coffeescript',
  ], 'client');
  api.addFiles([
    'main.coffee'
  ], 'client');
});
