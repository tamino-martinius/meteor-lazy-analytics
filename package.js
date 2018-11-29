Package.describe({
  name: 'zaku:lazy-analytics',
  version: '0.0.2',
  summary: 'Load analycis with js',
  git: 'https://github.com/zaku-eu/meteor-lazy-analytics.git',
  documentation: 'README.md'
});

Package.onUse(function (api) {
  api.versionsFrom('1.0.3.1');
  api.use([
    'coffeescript@2.0.0',
  ], 'client');
  api.addFiles([
    'main.coffee'
  ], 'client');
});
