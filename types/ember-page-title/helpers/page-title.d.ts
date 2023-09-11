import { HelperLike } from '@glint/template';

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    pageTitle: HelperLike<{
      Args: { Positional: [title?: string] };
      Return: void;
    }>;
  }
}

declare const pageTitle: HelperLike<{
  Args: { Positional: [title?: string]; Named: { replace: boolean } };
  Return: void;
}>;

export default pageTitle;
