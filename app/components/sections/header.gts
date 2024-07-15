import { LinkTo } from '@ember/routing';
import HeroIcon from 'ember-heroicons/components/hero-icon';
import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { action } from '@ember/object';
import { on } from '@ember/modifier';

export default class Header extends Component<{}> {
  @tracked isMenuHidden = true;

  @action
  toggleMenuVisibility() {
    this.isMenuHidden = !this.isMenuHidden;
  }

  <template>
    <nav class='rounded border-gray-200 bg-white px-4 py-2.5 sm:px-6'>
      <div
        class='container mx-auto flex flex-wrap items-center justify-between'
      >
        <LinkTo @route='application' class='flex items-center'>
          <img
            src='/embercrate-logo.svg'
            class='mr-3 h-6 w-6 sm:h-9 sm:w-9'
            alt='EmberCrate Logo'
            width='36'
            height='36'
          />
          <span
            class='self-center whitespace-nowrap text-xl font-semibold leading-none tracking-tight'
          >EmberCrate</span>
        </LinkTo>
        <button
          {{on 'click' this.toggleMenuVisibility}}
          type='button'
          class='ml-3 inline-flex items-center rounded-lg p-2 text-sm text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 md:hidden'
          aria-controls='navbar-default'
          aria-expanded='false'
        >
          <span class='sr-only'>Open main menu</span>
          <svg
            class='h-6 w-6'
            aria-hidden='true'
            fill='currentColor'
            viewBox='0 0 20 20'
            xmlns='http://www.w3.org/2000/svg'
          ><path
              fill-rule='evenodd'
              d='M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z'
              clip-rule='evenodd'
            ></path></svg>
        </button>
        <div
          class='{{if this.isMenuHidden "hidden"}} w-full md:block md:w-auto'
          id='navbar-default'
        >
          <ul
            class='md: mt-4 flex flex-col items-center rounded-lg border border-gray-100 bg-gray-50 p-4 md:mt-0 md:flex-row md:space-x-8 md:border-0 md:bg-white md:text-sm md:font-medium'
          >
            <li>
              <LinkTo
                @route='index'
                class='block rounded py-2 pl-3 pr-4 text-gray-700 hover:bg-gray-100 md:border-0 md:p-0 md:hover:bg-transparent md:hover:text-orange-700'
                {{on 'click' this.toggleMenuVisibility}}
              >
                Home
              </LinkTo>
            </li>
            <li>
              <LinkTo
                @route='resources'
                class='block rounded py-2 pl-3 pr-4 text-gray-700 hover:bg-gray-100 md:border-0 md:p-0 md:hover:bg-transparent md:hover:text-orange-700'
                {{on 'click' this.toggleMenuVisibility}}
              >
                Resources
              </LinkTo>
            </li>
            {{! <li>
              <LinkTo
                @route='resources'
                class='block py-2 pl-3 pr-4 text-gray-700 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-orange-700 md:p-0'
              >
                Collections
              </LinkTo>
            </li> }}
            <li>
              <LinkTo
                @route='about'
                class='block rounded py-2 pl-3 pr-4 text-gray-700 hover:bg-gray-100 md:border-0 md:p-0 md:hover:bg-transparent md:hover:text-orange-700'
                {{on 'click' this.toggleMenuVisibility}}
              >
                About
              </LinkTo>
            </li>
            <li>
              <LinkTo
                @route='add-resource'
                class='inline-flex items-center rounded-lg border border-gray-200 bg-white px-3 py-2 text-xs font-medium text-gray-900 hover:bg-gray-100 hover:text-orange-700 focus:z-10 focus:outline-none focus:ring-4 focus:ring-gray-200'
                {{on 'click' this.toggleMenuVisibility}}
              >
                <HeroIcon @icon='plus' class='mr-2 -ml-1 h-4 w-4' />
                Add resource
              </LinkTo>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </template>
}
