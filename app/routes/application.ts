import Route from '@ember/routing/route';
import { service } from '@ember/service';
import Store from '@ember-data/store';

export default class ApplicationRoute extends Route {
  @service declare store: Store;

  async model() {
    const { resources } = await import('ember-crate/data/resources');

    resources.forEach((resource, index) => {
      const tags = resource.tags.slice().map((tag) => {
        const foundTag = this.store.peekRecord('tag', tag);
        if (foundTag) {
          return foundTag;
        }
        return this.store.createRecord('tag', { id: tag });
      });
      this.store.createRecord('resource', {
        id: index + 1,
        ...resource,
        tags: tags,
      });
    });
  }
}
