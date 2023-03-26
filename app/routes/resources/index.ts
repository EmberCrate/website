import Route from '@ember/routing/route';
import { service } from '@ember/service';
import Store from '@ember-data/store';

export default class ResourcesIndexRoute extends Route {
  @service declare store: Store;

  queryParams = {
    filter: { refreshModel: true },
    sort: { refreshModel: true },
    featured: { refreshModel: true },
    page: { refreshModel: false },
    types: { refreshModel: true },
    tags: { refreshModel: true },
    authors: { refreshModel: true },
  };

  model(params: any) {
    return this.store
      .peekAll('resource')
      .slice()
      .filter((resource) => {
        if (params.featured === 'Featured') {
          return resource.isFeatured;
        }
        return true;
      })
      .filter((resource) => {
        if (params.filter) {
          return (
            resource.title
              .toLowerCase()
              .indexOf(params.filter.toLowerCase()) !== -1
          );
        }
        return true;
      })
      .filter((resource) => {
        if (params.types.length) {
          return params.types.includes(resource.type);
        }
        return true;
      })
      .filter((resource) => {
        if (params.authors.length) {
          return params.authors.includes(resource.author);
        }
        return true;
      })
      .filter((resource) => {
        if (params.tags.length) {
          return params.tags.some((tag: string) =>
            resource.tags.map((tag) => tag.id).includes(tag)
          );
        }
        return true;
      })
      .sort(
        (a, b) =>
          (params.sort === 'Newest first' ? 1 : -1) *
          (b.publishDate.getTime() - a.publishDate.getTime())
      );
  }
}
