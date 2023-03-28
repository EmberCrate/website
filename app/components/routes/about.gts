import HeroIcon from 'ember-heroicons/components/hero-icon';

<template>
  <div class='bg-white p-4 sm:p-6'>
    <div class='container mx-auto'>
      <div class='rounded-xl bg-gray-900 py-8'>
        <div class='mx-4 my-24 text-center md:mx-24'>

          <h2
            class='mb-4 text-4xl font-bold leading-none tracking-tight text-gray-100 sm:px-16 md:text-5xl lg:text-6xl xl:px-72'
          >Crowdsourcing Ember.js knowledge</h2>

          <p
            class='mb-6 text-lg font-normal text-gray-300 sm:px-16 lg:text-xl xl:px-72'
          >EmberCrate is the hub for all modern resources on Ember.js. Find
            interesting articles, conference talks, social media posts, and
            more.</p>
        </div>
      </div>

      <div
        class='mx-auto mt-16 flex max-w-4xl flex-col-reverse gap-8 md:flex-row'
      >
        <div class='flex flex-shrink-0 flex-col items-center gap-4'>
          <img
            class='h-40 w-40 rounded-full bg-gray-300 ring-2 ring-gray-100'
            src='/ignace-maes.jpeg'
            alt='Bordered avatar'
          />
          <h4 class='text-2xl font-bold'>Ignace Maes</h4>
          <div class='flex items-center gap-2'>
            <a
              href='https://twitter.com/Ignace_Maes'
              target='_blank'
              rel='noopener noreferrer'
              class='text-gray-600 hover:text-[#1da1f2]'
            >
              <svg
                class='h-4 w-4'
                aria-hidden='true'
                focusable='false'
                data-prefix='fab'
                data-icon='twitter'
                role='img'
                xmlns='http://www.w3.org/2000/svg'
                viewBox='0 0 512 512'
              >
                <path
                  fill='currentColor'
                  d='M459.4 151.7c.325 4.548 .325 9.097 .325 13.65 0 138.7-105.6 298.6-298.6 298.6-59.45 0-114.7-17.22-161.1-47.11 8.447 .974 16.57 1.299 25.34 1.299 49.06 0 94.21-16.57 130.3-44.83-46.13-.975-84.79-31.19-98.11-72.77 6.498 .974 12.99 1.624 19.82 1.624 9.421 0 18.84-1.3 27.61-3.573-48.08-9.747-84.14-51.98-84.14-102.1v-1.299c13.97 7.797 30.21 12.67 47.43 13.32-28.26-18.84-46.78-51.01-46.78-87.39 0-19.49 5.197-37.36 14.29-52.95 51.65 63.67 129.3 105.3 216.4 109.8-1.624-7.797-2.599-15.92-2.599-24.04 0-57.83 46.78-104.9 104.9-104.9 30.21 0 57.5 12.67 76.67 33.14 23.72-4.548 46.46-13.32 66.6-25.34-7.798 24.37-24.37 44.83-46.13 57.83 21.12-2.273 41.58-8.122 60.43-16.24-14.29 20.79-32.16 39.31-52.63 54.25z'
                >
                </path>
              </svg>
            </a>
            <a
              href='https://ignacemaes.com'
              target='_blank'
              rel='noopener noreferrer'
              class='text-gray-600 hover:text-gray-900'
            >
              <HeroIcon
                @icon='globe-europe-africa'
                @type='mini'
                class='h-5 w-5'
              />
            </a>
          </div>
        </div>
        <div class='h-100 ml-16 w-0.5 shrink-0 bg-gray-100' />
        <p class='text-2xl text-gray-700'>
          <svg
            aria-hidden='true'
            class='h-10 w-10 text-gray-300'
            viewBox='0 0 24 27'
            fill='none'
            xmlns='http://www.w3.org/2000/svg'
          >
            <path
              d='M14.017 18L14.017 10.609C14.017 4.905 17.748 1.039 23 0L23.995 2.151C21.563 3.068 20 5.789 20 8H24V18H14.017ZM0 18V10.609C0 4.905 3.748 1.038 9 0L9.996 2.151C7.563 3.068 6 5.789 6 8H9.983L9.983 18L0 18Z'
              fill='currentColor'
            />
          </svg>
          The Ember.js framework was first released in 2011. More than 10 years
          later it is still a solid framework for building ambitious web
          applications. Due to the nature of change, there is a lot of outdated
          content out on the web. EmberCrate aims to tackle this by making it
          easy to discover modern and up to date resources.
        </p>
      </div>
    </div>
  </div>
</template>
