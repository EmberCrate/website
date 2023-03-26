import Controller from '@ember/controller';
import { tracked } from '@glimmer/tracking';

export default class ResourcesIndexController extends Controller {
  queryParams = [
    {
      filter: { type: 'string' as const },
      sort: { type: 'string' as const },
      featured: { type: 'string' as const },
      page: { type: 'number' as const },
      types: { type: 'array' as const },
      tags: { type: 'array' as const },
      authors: { type: 'array' as const },
    },
  ];

  @tracked filter = '';

  @tracked sort = 'Newest first';

  @tracked featured = 'All';

  @tracked page = 1;

  @tracked types = [];

  @tracked tags = [];

  @tracked authors = [];
}
