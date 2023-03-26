import Route from '@ember/routing/route';
import { service } from '@ember/service';
import Store from '@ember-data/store';

export default class IndexRoute extends Route {
  @service declare store: Store;

  model() {
    return {
      featuresResources: this.store
        .peekAll('resource')
        .slice()
        .sort((a, b) => b.publishDate.getTime() - a.publishDate.getTime())
        .filter((resource) => resource.isFeatured)
        .slice(0, 5),
      recentlyAddedResources: this.store
        .peekAll('resource')
        .slice()
        .sort((a, b) => b.publishDate.getTime() - a.publishDate.getTime())
        .slice(0, 5),
    };
  }
}
