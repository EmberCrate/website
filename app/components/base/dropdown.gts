import Component from '@glimmer/component';
import { TOC } from '@ember/component/template-only';
import HeroIcon from 'ember-heroicons/components/hero-icon';
import { tracked } from '@glimmer/tracking';
import { on } from '@ember/modifier';
// @ts-expect-error TS(2307)
import onClickOutside from 'ember-click-outside/modifiers/on-click-outside';
import { fn } from '@ember/helper';

const DropdownItem: TOC<{
  Args: { option: string; isSelected: boolean };
  Element: HTMLLIElement;
}> = <template>
  <li ...attributes>
    <span
      class='flex cursor-pointer justify-between px-4 py-2 hover:bg-gray-100'
    >
      {{@option}}
      {{#if @isSelected}}
        <HeroIcon @icon='check' @type='mini' class='h-4 w-4 text-gray-500' />
      {{/if}}
    </span>
  </li>
</template>;

export interface DropdownSignature {
  Args: {
    options: Array<string>;
    selectedOption: string;
    icon: string;
    onSelectOption: (option: string) => void;
    hasBorder?: boolean;
  };
  Element: HTMLDivElement;
}

export default class Dropdown extends Component<DropdownSignature> {
  @tracked isOpen = false;

  toggleDropdownVisibility = () => {
    this.isOpen = !this.isOpen;
  };

  isSelectedOption = (option: string) => {
    return this.args.selectedOption === option;
  };

  onClickOption = (option: string) => {
    this.isOpen = false;
    this.args.onSelectOption(option);
  };

  get isBorderVisible() {
    return this.args.hasBorder ?? true;
  }

  <template>
    <div class='relative' {{onClickOutside (fn (mut this.isOpen) false)}} ...attributes>
      <button
        class='
        flex w-full items-center rounded-lg  bg-white px-5 py-2.5 text-sm font-medium text-gray-900 hover:bg-gray-100 focus:outline-none focus:ring-4 focus:ring-gray-200
          {{if this.isBorderVisible 'border border-gray-300'}}
        '
        type='button'
        {{on 'click' this.toggleDropdownVisibility}}
      >
        <HeroIcon @icon={{@icon}} class='mr-2 -ml-1 h-4 w-4' />
        {{@selectedOption}}
      </button>
      {{#if this.isOpen}}
        <div
          id='dropdown'
          class='absolute z-10 w-44 divide-y divide-gray-100 rounded-lg border border-gray-100 bg-white shadow'
        >
          <ul
            class='py-2 text-sm text-gray-700'
            aria-labelledby='dropdownDefaultButton'
          >
            {{#each @options as |option|}}
              <DropdownItem
                @option={{option}}
                @isSelected={{(this.isSelectedOption option)}}
                {{on 'click' (fn this.onClickOption option)}}
              />
            {{/each}}
          </ul>
        </div>
      {{/if}}
    </div>
  </template>
}
