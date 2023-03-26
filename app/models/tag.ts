import Model, { hasMany, type SyncHasMany } from '@ember-data/model';
import type Resource from 'ember-crate/models/resource';

export default class Tag extends Model {
  @hasMany('resource', { async: false, inverse: null })
  declare resources: SyncHasMany<Resource>;
}

declare module 'ember-data/types/registries/model' {
  export default interface ModelRegistry {
    tag: Tag;
  }
}
