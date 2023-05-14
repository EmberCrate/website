import { LinkTo } from '@ember/routing';
import { TOC } from '@ember/component/template-only';
import HeroIcon from 'ember-heroicons/components/hero-icon';
import ResourceCard from 'ember-crate/components/resource-card';
import { hash } from '@ember/helper';

const IndexPage: TOC<{ Args: { model: any } }> = <template>
  <div class='bg-white p-4 sm:p-6'>
    <div class='container mx-auto'>
      <div class='mx-4 my-24 text-center md:mx-24'>
        <h1
          class='mb-4 text-4xl font-extrabold leading-none tracking-tight text-gray-900 sm:px-16 md:text-5xl lg:text-6xl xl:px-72'
        >
          The
          <div class='relative inline-flex'>
            <span
              class='absolute inset-x-0 bottom-0 border-b-[0.25em] border-blue-500/20'
            ></span>
            <span class='relative'>open collection</span>
          </div>
          for all resources on Ember.js
        </h1>
        <p
          class='mb-6 text-lg font-normal text-gray-500 sm:px-16 lg:text-xl xl:px-72'
        >Discover the best resources and learning materials on Ember.js. Find
          interesting articles, conference talks, social media posts, and more.</p>
        <LinkTo
          @route='resources'
          @query={{hash sort='Newest first' featured='All'}}
          class='inline-flex items-center justify-center rounded-lg bg-blue-700 px-5 py-3 text-center text-base font-medium text-white hover:bg-blue-800 focus:ring-4 focus:ring-blue-300'
        >
          Explore resources
          <HeroIcon
            @icon='arrow-right'
            @type='mini'
            class='ml-2 -mr-1 h-5 w-5'
          />
        </LinkTo>
      </div>

      <section class='my-16 rounded-xl bg-slate-50'>
        <div
          class='mx-auto max-w-screen-xl px-4 py-4 text-center lg:py-8 lg:px-6'
        >
          <dl
            class='mx-auto grid max-w-screen-md gap-8 text-gray-900 sm:grid-cols-3'
          >
            <div class='flex flex-col items-center justify-center'>
              <dt class='mb-2 text-3xl font-extrabold md:text-4xl'>40+</dt>
              <dd class='font-light text-gray-500'>Resources</dd>
            </div>
            <div class='flex flex-col items-center justify-center'>
              <dt class='mb-2 text-3xl font-extrabold md:text-4xl'>30+</dt>
              <dd class='font-light text-gray-500'>Tags</dd>
            </div>
            <div class='flex flex-col items-center justify-center'>
              <dt class='mb-2 text-3xl font-extrabold md:text-4xl'>20+</dt>
              <dd class='font-light text-gray-500'>Authors</dd>
            </div>
          </dl>
        </div>
      </section>

      <div class='mb-4 mt-12 flex items-center justify-between'>
        <h3 class='text-2xl font-bold md:text-3xl'>Featured</h3>

        <LinkTo
          @route='resources'
          @query={{hash sort='Newest first' featured='Featured'}}
          class='inline-flex items-center text-blue-500 hover:underline'
        >
          View more
          <HeroIcon
            @icon='arrow-right'
            @type='mini'
            class='ml-2 -mr-1 h-4 w-4'
          />
        </LinkTo>
      </div>
      <div
        class='grid grid-cols-2 gap-4 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5'
      >
        {{#each @model.featuresResources as |resource|}}
          <ResourceCard @resource={{resource}} />
        {{/each}}
      </div>

      <div class='mb-4 mt-12 flex items-center justify-between'>
        <h3 class='text-2xl font-bold md:text-3xl'>Recently added</h3>

        <LinkTo
          @route='resources'
          @query={{hash sort='Newest first' featured='All'}}
          class='inline-flex items-center text-blue-500 hover:underline'
        >
          View more
          <HeroIcon
            @icon='arrow-right'
            @type='mini'
            class='ml-2 -mr-1 h-4 w-4'
          />
        </LinkTo>
      </div>
      <div
        class='grid grid-cols-2 gap-4 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5'
      >
        {{#each @model.recentlyAddedResources as |resource|}}
          <ResourceCard @resource={{resource}} />
        {{/each}}
      </div>
    </div>
  </div>
</template>;

export default IndexPage;
