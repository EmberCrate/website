// Types for compiled templates

import { HelperLike } from '@glint/template';
import { TemplateFactory } from 'ember-cli-htmlbars';

declare module 'ember-crate/templates/*' {
  const tmpl: TemplateFactory;
  export default tmpl;
}

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    'page-title': HelperLike<{
      Args: { Positional: [title?: string] };
      Return: void;
    }>;
  }
}
