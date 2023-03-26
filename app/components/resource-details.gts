import { TOC } from '@ember/component/template-only';
import Resource from 'ember-crate/models/resource';
import { ResourceType } from 'ember-crate/models/resource';
import HeroIcon from 'ember-heroicons/components/hero-icon';
import ResourceCard from 'ember-crate/components/resource-card';

const isResourceType = (resource: Resource, resourceType: ResourceType) => {
  return resource.type === resourceType;
};

const formatDate = (date: Date) => {
  const options: Intl.DateTimeFormatOptions = {
    month: 'long',
    day: 'numeric',
    year: 'numeric',
  };
  return new Intl.DateTimeFormat('en-US', options).format(new Date(date));
};

const TwitterEmbed: TOC<{ Args: { resource: Resource } }> = <template>
  <blockquote class='twitter-tweet'>
    <a href={{@resource.url}}></a>
  </blockquote>
  <script
    async
    src='https://platform.twitter.com/widgets.js'
    charset='utf-8'
  ></script>
</template>;

const YoutubeEmbed: TOC<{ Args: { resource: Resource } }> = <template>
  <iframe
    class='aspect-video w-full'
    src='https://www.youtube.com/embed/{{@resource.youtubeId}}'
    title='YouTube video player'
    frameborder='0'
    allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture'
    allowfullscreen
  ></iframe>
</template>;

const ResourceDetails: TOC<{ Args: { resource: Resource } }> = <template>
  <h3 class='mb-4 flex items-center text-3xl font-bold tracking-tight'>
    {{@resource.title}}
  </h3>
  <div
    class='my-4 -mx-3 flex flex-col justify-between gap-3 bg-slate-50 px-3 md:-mx-6 md:flex-row md:rounded-xl md:px-6'
  >
    <div class='-ml-8 grid grid-cols-2 divide-x divide-slate-200/50 md:flex'>
      <div class='px-8 py-3 md:py-6'>
        <div class='mb-1 flex items-center text-sm text-slate-600'>
          <HeroIcon @icon='clock' @type='outline' class='mr-2 h-4 w-4' />
          <span>Published</span>
        </div>
        <div>
          {{formatDate @resource.publishDate}}
        </div>
      </div>
      <div class='px-8 py-3 md:py-6'>
        <div class='mb-1 flex items-center text-sm text-slate-600'>
          <HeroIcon @icon='user' @type='outline' class='mr-2 h-4 w-4' />
          <span>Author</span>
        </div>
        <div>
          {{@resource.author}}
        </div>
      </div>
      <div class='px-8 py-3 md:py-6'>
        <div class='mb-1 flex items-center text-sm text-slate-600'>
          <HeroIcon @icon='book-open' @type='outline' class='mr-2 h-4 w-4' />
          <span>Type</span>
        </div>
        <div>
          {{@resource.type}}
        </div>
      </div>
    </div>
    <a
      href={{@resource.url}}
      target='_blank'
      class='my-6 mt-0 inline-flex items-center rounded-lg bg-blue-700 px-5 py-3 text-center text-base font-medium text-white hover:bg-blue-800 focus:outline-none focus:ring-4 focus:ring-blue-300 md:mt-6'
    >
      View resource
      <HeroIcon
        @icon='arrow-top-right-on-square'
        @type='mini'
        class='ml-2 -mr-1 h-4 w-4'
      />
    </a>
  </div>

  <div class='mt-8 flex max-w-3xl flex-col gap-8'>
    {{#if (isResourceType @resource ResourceType.YouTube)}}
      <YoutubeEmbed @resource={{@resource}} />
    {{/if}}
    {{#if (isResourceType @resource ResourceType.Twitter)}}
      <TwitterEmbed @resource={{@resource}} />
    {{/if}}
    {{#if (isResourceType @resource ResourceType.GitHub)}}
      <div
        class='aspect-video bg-gray-300 bg-cover bg-center'
        style='background-image: url({{@resource.previewImage}})'
      ></div>
    {{/if}}

    <div class='text-xl text-slate-700'>
      {{#if @resource.description}}
        {{@resource.description}}
      {{else}}
        <span class='italic'>This resource has no description</span>
      {{/if}}
    </div>
  </div>

  <h4 class='mt-8 mb-4 text-2xl font-bold'>Tags</h4>
  <div>
    {{#each @resource.tags as |tag|}}
      <span
        class='mr-2 rounded bg-blue-100 px-2.5 py-0.5 text-sm font-medium text-blue-800'
      >{{tag.id}}</span>
    {{else}}
      <span class='text-slate-500'>This resource has no tags</span>
    {{/each}}
  </div>

  <h4 class='mt-8 mb-4 text-2xl font-bold'>Related resources</h4>
  <div>
    {{#if @resource.relatedResources}}
      <div
        class='grid grid-cols-2 gap-4 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5'
      >
        {{#each @resource.relatedResources as |resource|}}
          <ResourceCard @resource={{resource}} />
        {{/each}}
      </div>
    {{else}}
      <span class='text-slate-500'>No related resources available</span>
    {{/if}}
  </div>

  <div class='mt-8 mb-4'>
    <a
      href='https://github.com/EmberCrate/website/blob/main/app/data/resources.ts'
      target='_blank'
      class='flex items-center text-sm font-medium text-gray-500 hover:underline'
      rel='noopener noreferrer'
    >
      Edit this page on GitHub
      <HeroIcon @icon='pencil' @type='outline' class='ml-2 -mr-1 h-3 w-3' />
    </a>
  </div>
</template>;

export default ResourceDetails;
