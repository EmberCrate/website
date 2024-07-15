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
              href='https://x.com/Ignace_Maes'
              target='_blank'
              rel='noopener noreferrer'
              class='text-gray-600 hover:text-[#1da1f2]'
            >
              <svg
                class='h-4 w-4'
                fill='currentColor'
                viewBox="0 0 1200 1227" xmlns="http://www.w3.org/2000/svg">
                <path d="M714.163 519.284L1160.89 0H1055.03L667.137 450.887L357.328 0H0L468.492 681.821L0 1226.37H105.866L515.491 750.218L842.672 1226.37H1200L714.137 519.284H714.163ZM569.165 687.828L521.697 619.934L144.011 79.6944H306.615L611.412 515.685L658.88 583.579L1055.08 1150.3H892.476L569.165 687.854V687.828Z"/>
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
