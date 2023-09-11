// Types for compiled templates

import { TemplateFactory } from 'ember-cli-htmlbars';
import '@glint/environment-ember-loose';
import '@glint/environment-ember-template-imports';

declare module 'ember-crate/templates/*' {
  const tmpl: TemplateFactory;
  export default tmpl;
}
