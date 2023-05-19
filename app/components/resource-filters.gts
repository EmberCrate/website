import Component from '@glimmer/component';
import HeroIcon from 'ember-heroicons/components/hero-icon';
import { on } from '@ember/modifier';
import Dropdown from 'ember-crate/components/base/dropdown';
import DropdownList, {
  ListItem,
} from 'ember-crate/components/base/dropdown-list';
import { service } from '@ember/service';
import Store from '@ember-data/store';
import { ResourceType } from 'ember-crate/models/resource';
import Router from 'ember-crate/router';

export const featuredOptions = ['All', 'Featured'];

export default class ResourceFilters extends Component<{
  Args: {
    filter: string;
    selectedFeaturedOption: string;
    types: Array<string>;
    tags: Array<string>;
    authors: Array<string>;
  };
}> {
  @service declare store: Store;

  @service declare router: Router;

  onChangeFilter = (event: Event) => {
    const filter = (event.target as HTMLInputElement).value;
    this.router.transitionTo('resources.index', {
      queryParams: { filter, page: 1 },
    });
  };

  onSelectFeaturedOption = (featured: string) => {
    this.router.transitionTo('resources.index', {
      queryParams: { featured, page: 1 },
    });
  };

  onSelectTypesOptions = (types: Array<string>) => {
    this.router.transitionTo('resources.index', {
      queryParams: { types, page: 1 },
    });
  };

  onSelectTagsOptions = (tags: Array<string>) => {
    this.router.transitionTo('resources.index', {
      queryParams: { tags, page: 1 },
    });
  };

  onSelectAuthorsOptions = (authors: Array<string>) => {
    this.router.transitionTo('resources.index', {
      queryParams: { authors, page: 1 },
    });
  };

  get authorOptions() {
    const resources = this.store.peekAll('resource');

    const allAuthors = [
      ...new Set(resources.map((resource) => resource.author)),
    ].sort((author1, author2) => {
      return author1.localeCompare(author2, 'en', { sensitivity: 'base' });
    });
    return allAuthors.map((author) => new ListItem(author, author, this.args.authors.includes(author)));
  }

  get typeOptions() {
    return Object.values(ResourceType)
      .sort((type1, type2) => {
        return type1.localeCompare(type2, 'en', { sensitivity: 'base' });
      })
      .map((resourceType) => {
        return new ListItem(
          resourceType,
          resourceType,
          this.args.types.includes(resourceType)
        );
      });
  }

  get tagOptions() {
    const tags = this.store.peekAll('tag');

    const allTags = tags
      .map((tag) => tag.id)
      .sort((tag1, tag2) => {
        return tag1.localeCompare(tag2, 'en', { sensitivity: 'base' });
      });
    return allTags.map((tag) => new ListItem(tag, tag, this.args.tags.includes(tag)));
  }

  <template>
    <div class='relative rounded-lg bg-slate-50 p-4 md:rounded-xl'>
      <div class='flex flex-col justify-between gap-3'>
        <div class='w-full'>
          <label class='mb-2 block text-sm font-medium text-gray-900'>Search on
            title</label>
          <div class='relative w-full'>
            <div
              class='pointer-events-none absolute inset-y-0 left-0 flex items-center pl-3'
            >
              <HeroIcon
                @icon='magnifying-glass'
                class='h-5 w-5 text-gray-500'
              />
            </div>
            <input
              type='text'
              class='focus:ring-primary-500 focus:border-primary-500 block w-full rounded-lg border border-gray-300 bg-white p-2 pl-10 text-sm text-gray-900'
              placeholder='Search'
              value={{@filter}}
              {{on 'input' this.onChangeFilter}}
            />
          </div>
        </div>
        <div>
          <label
            class='mb-2 mt-2 block text-sm font-medium text-gray-900'
          >Filter</label>
          <div class='grid gap-3 md:grid-cols-2'>
            <DropdownList
              @icon='tag'
              @text='Tags'
              @options={{this.tagOptions}}
              @onSelectOptions={{this.onSelectTagsOptions}}
            />
            <DropdownList
              @icon='book-open'
              @text='Type'
              @options={{this.typeOptions}}
              @onSelectOptions={{this.onSelectTypesOptions}}
            />
            <DropdownList
              @icon='user'
              @text='Authors'
              @options={{this.authorOptions}}
              @onSelectOptions={{this.onSelectAuthorsOptions}}
            />
            <Dropdown
              @options={{featuredOptions}}
              @selectedOption={{@selectedFeaturedOption}}
              @icon='star'
              @onSelectOption={{this.onSelectFeaturedOption}}
            />
          </div>
        </div>
      </div>
    </div>
  </template>
}
