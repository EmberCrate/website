import EmberRouter from '@ember/routing/router';
import config from 'ember-crate/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function () {
  this.route('resources', function () {
    this.route('resource', { path: '/:resource_id' });
    this.route('index', { path: '/' });
  });
  this.route('add-resource');
  this.route('about');
  this.route('sitemap');
  this.route('404');
});
