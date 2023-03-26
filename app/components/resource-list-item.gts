import { LinkTo } from '@ember/routing';
import { TOC } from '@ember/component/template-only';
import Resource from 'ember-crate/models/resource';
import HeroIcon from 'ember-heroicons/components/hero-icon';

const formatDate = (date: Date) => {
  const options: Intl.DateTimeFormatOptions = {
    month: 'short',
    day: 'numeric',
    year: 'numeric',
  };
  return new Intl.DateTimeFormat('en-US', options).format(new Date(date));
};

export const ResourceListItem: TOC<{ Args: { resource: Resource } }> =
  <template>
    <LinkTo @route='resources.resource' @model={{@resource.slug}} class='py-8'>

      <div class='mb-5 flex items-center justify-between text-gray-500'>
        <div
          class='w-fit grow-0 rounded bg-slate-100 px-2.5 py-0.5 text-xs font-medium text-slate-800'
        >
          {{@resource.type}}
        </div>
        <span class='text-sm'>{{formatDate @resource.publishDate}}</span>
      </div>
      <div class="flex gap-2 items-center mb-2">
        <h2 class='text-2xl font-bold tracking-tight text-gray-900'>{{@resource.title}}</h2>
        {{#if @resource.isFeatured}}
          <HeroIcon
            @icon='star'
            @type='solid'
            class='h-4 w-4 shrink-0 text-yellow-400'
          />
        {{/if}}
      </div>
      <p class='mb-5 font-light text-gray-500 line-clamp-2'>
        {{#if @resource.description}}
          {{@resource.description}}
        {{else}}
          <span class='italic'>This resource has no description</span>
        {{/if}}
      </p>
      <div class='flex items-center justify-between'>
        <div class='flex items-center space-x-4'>
          <span class='font-medium'>
            {{@resource.author}}
          </span>
        </div>
        <span
          class='inline-flex items-center font-medium text-blue-600 hover:underline'
        >
          Read more
          <HeroIcon
            @icon='arrow-right'
            @type='mini'
            class='ml-2 h-4 w-4'
          />
        </span>
      </div>
    </LinkTo>
  </template>;

export default ResourceListItem;
