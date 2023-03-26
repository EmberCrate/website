declare module 'ember-heroicons/components/hero-icon' {
  import Component from '@glimmer/component';

  export default class HeroIcon extends Component<{
    Args: {
      icon: string;
      size?: string;
      type?: string;
    };
    Element: HTMLElement;
  }> {}
}
