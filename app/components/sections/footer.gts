import { LinkTo } from '@ember/routing';
import { hash } from '@ember/helper';

const currentYear = new Date().getFullYear();

<template>
  <footer class='mt-8 bg-white p-4 sm:p-6'>
    <div class='container mx-auto'>
      <div class='md:flex md:justify-between'>
        <div class='mb-6 md:mb-0'>
          <LinkTo @route='application' class='flex items-center'>
            <img
              src='/embercrate-logo.svg'
              class='mr-3 h-8'
              alt='EmberCrate Logo'
              width='32'
              height='32'
            />
            <span
              class='self-center whitespace-nowrap text-2xl font-semibold leading-none tracking-tight'
            >EmberCrate</span>
          </LinkTo>
        </div>
        <div class='grid grid-cols-2 sm:gap-6 md:gap-8 xl:gap-12'>
          <div>
            <h2
              class='mb-6 text-sm font-semibold uppercase text-gray-900'
            >Resources</h2>
            <ul class='text-gray-600'>
              <li class='mb-4'>
                <LinkTo
                  @route='resources'
                  @query={{hash sort='Newest first' featured='All'}}
                  class='hover:underline'
                >
                  Recently added
                </LinkTo>
              </li>
              <li class='mb-4'>
                <LinkTo
                  @route='resources'
                  @query={{hash sort='Newest first' featured='Featured'}}
                  class='hover:underline'
                >
                  Featured
                </LinkTo>
              </li>
              <li>
                <LinkTo @route='add-resource' class='hover:underline'>
                  Add resource
                </LinkTo>
              </li>
            </ul>
          </div>
          <div>
            <h2
              class='mb-6 text-sm font-semibold uppercase text-gray-900'
            >EmberCrate</h2>
            <ul class='text-gray-600'>
              <li class='mb-4'>
                <LinkTo @route='about' class='hover:underline'>About</LinkTo>
              </li>
              <li>
                <LinkTo
                  @route='sitemap'
                  class='hover:underline'
                >Sitemap</LinkTo>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <hr class='my-6 border-gray-200 sm:mx-auto lg:my-8' />
      <div class='sm:flex sm:items-center sm:justify-between'>
        <span class='text-sm text-gray-500 sm:text-center'>
          ©
          {{currentYear}}
          EmberCrate &mdash; Built with
          <a href='https://emberjs.com/' class='hover:underline'>Ember.js</a>
        </span>
        <div class='mt-4 flex space-x-6 sm:mt-0 sm:justify-center items-center'>
          <a
            href='https://twitter.com/EmberCrate'
            target='_blank'
            class='text-gray-500 hover:text-gray-900'
          >
            <svg
              class='h-4 w-4'
              fill='currentColor'
              viewBox="0 0 1200 1227" xmlns="http://www.w3.org/2000/svg">
              <path d="M714.163 519.284L1160.89 0H1055.03L667.137 450.887L357.328 0H0L468.492 681.821L0 1226.37H105.866L515.491 750.218L842.672 1226.37H1200L714.137 519.284H714.163ZM569.165 687.828L521.697 619.934L144.011 79.6944H306.615L611.412 515.685L658.88 583.579L1055.08 1150.3H892.476L569.165 687.854V687.828Z"/>
            </svg>
            <span class='sr-only'>X page</span>
          </a>
          <a
            href='https://github.com/EmberCrate'
            target='_blank'
            class='text-gray-500 hover:text-gray-900'
          >
            <svg
              class='h-5 w-5'
              fill='currentColor'
              viewBox='0 0 24 24'
            ><path
                fill-rule='evenodd'
                d='M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z'
                clip-rule='evenodd'
              /></svg>
            <span class='sr-only'>GitHub account</span>
          </a>
        </div>
      </div>
    </div>
  </footer>
</template>
