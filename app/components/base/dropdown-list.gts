import Component from '@glimmer/component';
import { TOC } from '@ember/component/template-only';
import HeroIcon from 'ember-heroicons/components/hero-icon';
import { tracked } from '@glimmer/tracking';
import { on } from '@ember/modifier';
import onClickOutside from 'ember-click-outside/modifiers/on-click-outside';
import { fn } from '@ember/helper';

export class ListItem {
  @tracked declare id: string;
  @tracked declare text: string;
  @tracked declare isChecked: boolean;

  constructor(id: string, text: string, isChecked: boolean) {
    this.id = id;
    this.text = text;
    this.isChecked = isChecked;
  }
}

const DropdownListItem: TOC<{
  Args: { option: ListItem };
  Element: HTMLLIElement;
}> = <template>
  <li ...attributes>
    <div class='cursor-pointer rounded pl-2 hover:bg-gray-100'>
      <label class='flex w-full items-center rounded py-2'>
        <input
          type='checkbox'
          class='h-4 w-4 rounded border-gray-300 bg-gray-100 text-blue-600 focus:ring-2 focus:ring-blue-500'
          checked={{@option.isChecked}}
        />
        <span class='ml-2 text-sm font-medium text-gray-900'>
          {{@option.text}}
        </span>
      </label>
    </div>
  </li>
</template>;

export interface DropdownListSignature {
  Args: {
    icon: string;
    options: Array<ListItem>;
    text: string;
    onSelectOptions: (options: Array<string>) => void;
  };
}

export default class DropdownList extends Component<DropdownListSignature> {
  @tracked isOpen = false;

  @tracked searchFilter = '';

  toggleDropdownVisibility = () => {
    this.isOpen = !this.isOpen;
  };

  onClickOption = (option: ListItem) => {
    option.isChecked = !option.isChecked;
    const selectedOptions = this.args.options
      .filter((option) => option.isChecked)
      .map((option) => option.id);
    this.args.onSelectOptions(selectedOptions);
  };

  onInputSearchFilter = (event: InputEvent) => {
    this.searchFilter = (event.target as HTMLInputElement).value;
  };

  get amountOfSelectedItems() {
    return this.args.options.filter((option) => option.isChecked).length;
  }

  get filteredOptions() {
    return this.args.options.filter((option) =>
      option.text.toLowerCase().includes(this.searchFilter.toLowerCase())
    );
  }

  <template>
    <div class='relative' {{onClickOutside (fn (mut this.isOpen) false)}}>
      <button
        data-dropdown-toggle='dropdown'
        class='flex w-full items-center rounded-lg border border-gray-300 bg-white px-5 py-2.5 text-sm font-medium text-gray-900 hover:bg-gray-100 focus:outline-none focus:ring-4 focus:ring-gray-200'
        type='button'
        {{on 'click' this.toggleDropdownVisibility}}
      >
        <HeroIcon @icon={{@icon}} class='mr-2 -ml-1 h-4 w-4' />
        {{@text}}
        {{#if this.amountOfSelectedItems}}
          <span
            class='ml-2 rounded bg-gray-200 px-2 py-0.5 text-xs font-medium text-gray-800'
          >
            {{this.amountOfSelectedItems}}
          </span>
        {{/if}}
      </button>
      {{#if this.isOpen}}
        <div
          class='absolute z-10 w-60 rounded-lg border border-gray-100 bg-white shadow'
        >
          <div class='p-3'>
            <div class='relative'>
              <div
                class='pointer-events-none absolute inset-y-0 left-0 flex items-center pl-3'
              >
                <HeroIcon
                  @icon='magnifying-glass'
                  class='h-4 w-4 text-gray-500'
                />
              </div>
              <input
                type='text'
                class='block w-full rounded-lg border border-gray-300 bg-gray-50 p-2 pl-10 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500'
                placeholder='Search'
                value={{this.searchFilter}}
                {{on 'input' this.onInputSearchFilter}}
              />
            </div>
          </div>
          <ul class='h-48 overflow-y-auto px-3 pb-3 text-sm text-gray-700'>
            {{#each this.filteredOptions as |option|}}
              <DropdownListItem
                @option={{option}}
                {{on 'change' (fn this.onClickOption option)}}
              />
            {{else}}
              <li class='text-slate-500'>
                No results
              </li>
            {{/each}}
          </ul>
        </div>
      {{/if}}
    </div>
  </template>
}
