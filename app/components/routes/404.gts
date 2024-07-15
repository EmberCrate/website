import { LinkTo } from '@ember/routing';

<template>
  <section class='bg-white'>
    <div class='mx-auto max-w-screen-xl py-8 px-4 lg:py-16 lg:px-6'>
      <div class='mx-auto max-w-screen-sm text-center'>
        <h1
          class='mb-4 text-7xl font-extrabold tracking-tight text-orange-600 lg:text-9xl'
        >404</h1>
        <p
          class='mb-4 text-3xl font-bold tracking-tight text-gray-900 md:text-4xl'
        >Something's missing.</p>
        <p class='mb-4 text-lg font-light text-gray-500'>Sorry, we can't find
          that page. You'll find lots to explore on the home page.
        </p>
        <LinkTo
          @route='application'
          class='my-4 inline-flex rounded-lg bg-orange-600 px-5 py-2.5 text-center text-sm font-medium text-white hover:bg-orange-800 focus:outline-none focus:ring-4 focus:ring-orange-300'
        >
          Back to Homepage
        </LinkTo>
      </div>
    </div>
  </section>
</template>
