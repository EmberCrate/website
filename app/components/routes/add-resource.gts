import HeroIcon from 'ember-heroicons/components/hero-icon';

<template>
  <div class='bg-white p-4 sm:p-6'>
    <div class='container mx-auto'>
      <h3 class='mb-4 text-3xl font-bold'>Add a resource</h3>
      <div class='flex flex-col gap-8 lg:flex-row lg:gap-32'>
        <div class='lg:w-2/3'>
          <p class='text-lg font-normal text-gray-500 lg:text-xl'>
            All resources listed on EmberCrate are crowdsourced. If you would
            like to add an interesting resource you found or made, follow the
            next steps in order to get it listed.
          </p>
          <div class='mt-8 max-w-2xl'>
            <div class='relative flex items-start pb-16'>
              <div
                class='z-10 grid h-10 w-10 shrink-0 place-content-center rounded-full bg-slate-100 text-xl font-semibold text-slate-700'
              >
                1
              </div>
              <div class='ml-6 mt-1 space-y-3'>
                <h3 class='text-xl font-semibold text-gray-900'>
                  Fork EmberCrate on GitHub
                </h3>
                <p class='text-lg text-gray-500'>
                  Create a fork of the
                  <kbd
                    class='rounded-lg border border-gray-200 bg-gray-100 px-2 py-1.5 font-mono text-xs font-semibold text-gray-800'
                  >@embercrate/website</kbd>
                  repository. This allows you to push your own changes to the
                  website codebase.
                </p>
                <a
                  href='https://github.com/EmberCrate/website'
                  target='_blank'
                  class='flex items-center font-medium text-blue-500 hover:underline'
                  rel='noopener noreferrer'
                >
                  Open repository on GitHub
                  <HeroIcon
                    @icon='arrow-top-right-on-square'
                    @type='mini'
                    class='ml-2 -mr-1 h-4 w-4'
                  />
                </a>
              </div>
              <div
                class='absolute inset-y-0 left-[18px] w-1 bg-slate-100'
              ></div>
            </div>
            <div class='relative flex items-start pb-16'>
              <div
                class='z-10 grid h-10 w-10 shrink-0 place-content-center rounded-full bg-slate-100 text-xl font-semibold text-slate-700'
              >
                2
              </div>
              <div class='ml-6 mt-1 space-y-3'>
                <h3 class='text-xl font-semibold text-gray-900'>
                  Add your resource data
                </h3>
                <p class='text-lg text-gray-500'>
                  Add a new entry to the resources list in
                  <kbd
                    class='rounded-lg border border-gray-200 bg-gray-100 px-2 py-1.5 font-mono text-xs font-semibold text-gray-800'
                  >app/data/resources.ts</kbd>. Make sure to follow the
                  submission guidelines.
                </p>
              </div>
              <div
                class='absolute inset-y-0 left-[18px] w-1 bg-slate-100'
              ></div>
            </div>
            <div class='relative flex items-start'>
              <div
                class='z-10 grid h-10 w-10 shrink-0 place-content-center rounded-full bg-slate-100 text-xl font-semibold text-slate-700'
              >
                3
              </div>
              <div class='ml-6 mt-1 space-y-3'>
                <h3 class='text-xl font-semibold text-gray-900'>Open a pull
                  request</h3>
                <p class='text-lg text-gray-500'>
                  Open a PR for your changes to be merged in the original
                  repository on the main branch. Once merged, all changes will
                  automatically be deployed.
                </p>
                <a
                  href='https://github.com/EmberCrate/website/compare'
                  target='_blank'
                  class='flex items-center font-medium text-blue-500 hover:underline'
                  rel='noopener noreferrer'
                >
                  Create pull request
                  <HeroIcon
                    @icon='arrow-top-right-on-square'
                    @type='mini'
                    class='ml-2 -mr-1 h-4 w-4'
                  />
                </a>
              </div>
            </div>
          </div>

        </div>

        <div class='h-fit rounded-xl bg-slate-50 p-6 lg:w-1/3'>
          <h4 class='text-2xl font-bold'>Submission guidelines</h4>
          <ul class='my-4 space-y-4 text-left text-gray-500'>
            <li>
              <div class='flex items-center space-x-3'>
                <HeroIcon
                  @icon='check'
                  @type='mini'
                  class='h-5 w-5 flex-shrink-0 text-green-500'
                />
                <span class='font-semibold text-gray-900'>The resource must be
                  related to Ember.js</span>
              </div>
              <p class='ml-8 mt-2'>All links must be about Ember.js in a direct
                way. For example, a link to the Tailwind CSS website would be
                rejected. A link to the Tailwind CSS setup guide for Ember.js
                would be accepted.</p>
            </li>
            <li>
              <div class='flex items-center space-x-3'>
                <HeroIcon
                  @icon='check'
                  @type='mini'
                  class='h-5 w-5 flex-shrink-0 text-green-500'
                />
                <span class='font-semibold text-gray-900'>The resource should be
                  educational</span>
              </div>
              <p class='ml-8 mt-2'>No links to one time announcements or events.
                Links should stay relevant for the foreseeable future.</p>
            </li>
            <li>
              <div class='flex items-center space-x-3'>
                <HeroIcon
                  @icon='check'
                  @type='mini'
                  class='h-5 w-5 flex-shrink-0 text-green-500'
                />
                <span class='font-semibold text-gray-900'>The resource should be
                  modern at time of submission</span>
              </div>
              <p class='ml-8 mt-2'>Resources must advocate for modern and
                recommended Ember.js patterns.</p>
            </li>
            <li>
              <div class='flex items-center space-x-3'>
                <HeroIcon
                  @icon='check'
                  @type='mini'
                  class='h-5 w-5 flex-shrink-0 text-green-500'
                />
                <span class='font-semibold text-gray-900'>No excessive
                  self-promotion</span>
              </div>
              <p class='ml-8 mt-2'>Submitting self-made content is allowed. This
                should however be done moderately.</p>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>
