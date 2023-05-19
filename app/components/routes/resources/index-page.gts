import Component from '@ember/component';
import ResourceListItem from 'ember-crate/components/resource-list-item';
import ResourceFilters from 'ember-crate/components/resource-filters';
import Dropdown from 'ember-crate/components/base/dropdown';
import Paginator from 'ember-crate/components/base/paginator';
import { service } from '@ember/service';
import Resource from 'ember-crate/models/resource';
import Router from 'ember-crate/router';

export const sortOptions = ['Newest first', 'Oldest first'];

const paginateData = (
  data: Array<Resource>,
  currentPage: number,
  itemsPerPage: number
) => {
  const start = (currentPage - 1) * itemsPerPage;
  return data.slice(start, Math.min(start + itemsPerPage, data.length));
};

export default class IndexPage extends Component<{
  Args: {
    model: any;
    filter: string;
    sort: string;
    featured: any;
    currentPage: number;
    types: Array<string>;
    tags: Array<string>;
    authors: Array<string>;
  };
}> {
  @service declare router: Router;

  onSelectSortOption = (sort: string) => {
    this.router.transitionTo('resources.index', {
      queryParams: { sort, page: 1 }
    });
  }

  <template>
    <h3 class='mb-4 text-3xl font-bold'>All resources</h3>

    <div class='flex flex-col gap-12 lg:flex-row'>
      <div class='lg:w-1/3'>
        <ResourceFilters
          @filter={{@filter}}
          @selectedFeaturedOption={{@featured}}
          @types={{@types}}
          @tags={{@tags}}
          @authors={{@authors}}
        />
      </div>

      <div class='lg:w-2/3'>
        <div class='flex items-center justify-between text-slate-500'>
          <span>{{@model.length}} results</span>

          <Dropdown
            @options={{sortOptions}}
            @selectedOption={{@sort}}
            @icon='arrows-up-down'
            @onSelectOption={{this.onSelectSortOption}}
            @hasBorder={{false}}
            class='md:-mr-5'
          />
        </div>

        <div class='grid grid-cols-1 divide-y'>
          {{#each (paginateData @model @currentPage 10) as |resource|}}
            <ResourceListItem @resource={{resource}} />
          {{/each}}
        </div>

        <div class='mt-8 flex justify-center'>
          <Paginator
            @currentPage={{@currentPage}}
            @totalItems={{@model.length}}
          />
        </div>
      </div>
    </div>
  </template>
}
