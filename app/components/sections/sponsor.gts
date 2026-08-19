import HeroIcon from 'ember-heroicons/components/hero-icon';

<template>
  <section aria-labelledby='sponsor-heading' class='my-16'>
    <div
      class='flex flex-col gap-6 rounded-xl bg-slate-50 p-6 sm:p-8 md:flex-row md:items-center md:justify-between md:gap-10'
    >
      <div>
        <h2
          id='sponsor-heading'
          class='mb-3 text-xs font-semibold uppercase tracking-widest text-gray-400'
        >
          Sponsored by
        </h2>

        <a
          href='https://fallax.io'
          target='_blank'
          rel='noopener noreferrer sponsored'
          class='group inline-flex items-center gap-2 text-gray-900'
        >
          <svg
            class='h-7 w-7 text-[#5d7510]'
            viewBox='0 0 24 24'
            fill='currentColor'
            aria-hidden='true'
          >
            <path d='M4.2 2.8H20.4V7.4H8.8V9.6L4.2 12.2Z' />
            <path d='M4.2 14.8 8.8 12.2V10.4H17.6V15H8.8V21.2H4.2Z' />
          </svg>
          <span
            class='text-2xl font-semibold leading-none tracking-tight group-hover:underline'
          >Fallax</span>
        </a>

        <p class='mt-3 max-w-xl text-gray-500'>
          Phishing simulation and security awareness training for teams. Run
          internal simulations, coach employees the moment they click, and turn
          the results into audit-ready evidence.
        </p>
      </div>

      <a
        href='https://fallax.io'
        target='_blank'
        rel='noopener noreferrer sponsored'
        class='inline-flex flex-shrink-0 items-center justify-center self-start rounded-lg bg-[#5d7510] px-5 py-3 text-center text-base font-medium text-white hover:bg-[#4c6009] focus:ring-4 focus:ring-[#5d7510]/30 md:self-auto'
      >
        Visit fallax.io
        <HeroIcon @icon='arrow-right' @type='mini' class='ml-2 -mr-1 h-5 w-5' />
      </a>
    </div>
  </section>
</template>
