import Route from '@ember/routing/route';
import { service } from '@ember/service';
import Store from '@ember-data/store';
import Resource from 'ember-crate/models/resource';

export default class ResourceRoute extends Route {
  @service declare store: Store;

  metaInfo = {};

  model(params: { resource_id: string }) {
    const resourceId = params.resource_id;

    if (!resourceId) {
      throw new Error('Invalid or no resource id in url');
    }

    const resource = this.store.peekRecord('resource', resourceId);

    if (!resource) {
      throw new Error("Resource with id doesn't exist");
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
