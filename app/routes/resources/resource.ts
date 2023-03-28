import Route from '@ember/routing/route';
import { service } from '@ember/service';
import Store from '@ember-data/store';
import Resource from 'ember-crate/models/resource';
import Router from 'ember-crate/router';

export default class ResourceRoute extends Route {
  @service declare store: Store;

  @service declare router: Router;

  metaInfo = {};

  model(params: { resource_id: string }) {
    const resourceId = params.resource_id;

    if (!resourceId) {
      this.router.transitionTo('404');
      return;
    }

    const resource = this.store.peekRecord('resource', resourceId);

    if (!resource) {
      this.router.transitionTo('404');
      return;
    }

    return resource;
  }

  afterModel(model: Resource) {
    this.metaInfo = {
      content: model.description,
      author: model.author,
      categories: model.tags.slice().map((tag) => tag.id),
      date: model.publishDate,
      slug: `resources/${model.slug}`,
      title: `${model.title} | EmberCrate`,
    };
  }
}
