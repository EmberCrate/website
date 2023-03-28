import Model, { attr, hasMany, type SyncHasMany } from '@ember-data/model';
import type Tag from 'ember-crate/models/tag';
import slugify from 'slugify';

export enum ResourceType {
  Video = 'Video',
  Documentation = 'Documentation',
  Tutorial = 'Tutorial',
  GitHub = 'GitHub',
  Website = 'Website',
  Article = 'Article',
  Twitter = 'Twitter',
  Book = 'Book',
  StackOverflow = 'StackOverflow',
  Podcast = 'Podcast',
}

export const slugifyTitle = (title: string) => {
  return slugify(title, { lower: true, strict: true });
};

export default class Resource extends Model {
  @hasMany('tag', { async: false, inverse: null })
  declare tags: SyncHasMany<Tag>;

  @attr()
  declare title: string;

  @attr()
  declare description: string;

  @attr()
  declare author: string;

  @attr()
  declare url: string;

  @attr()
  declare createdDate: Date;

  @attr()
  declare publishDate: Date;

  @attr()
  declare isFeatured: boolean;

  @attr()
  declare type: ResourceType;

  get hasPreviewImage() {
    return [ResourceType.Video, ResourceType.GitHub].includes(this.type);
  }

  get previewImage() {
    if (this.type === ResourceType.Video) {
      return `https://img.youtube.com/vi/${this.youtubeId}/mqdefault.jpg`;
    }
    if (this.type === ResourceType.GitHub) {
      const projectPath = [
        ...this.url.matchAll(/github\.com\/([^/]*\/.*)$/g),
      ][0]?.[1];
      return `https://opengraph.githubassets.com/x/${projectPath}`;
    }

    return null;
  }

  get youtubeId() {
    if (this.type !== ResourceType.Video) {
      return null;
    }
    const videoId = [
      ...this.url.matchAll(/(.*?)(^|\/|v=)([a-z0-9_-]{11})(.*)?/gim),
    ][0];
    return videoId?.[3];
  }

  get slug() {
    return slugifyTitle(this.title);
  }

  get relatedResources() {
    const resources = this.store.peekAll('resource');
    const matchingTags: Map<Resource, number> = new Map();
    resources.forEach((resource) => {
      matchingTags.set(resource, 0);
      resource.tags.forEach((resourceTag) => {
        if (this.tags.includes(resourceTag)) {
          matchingTags.set(resource, matchingTags.get(resource)! + 1);
        }
      });
    });
    const sortedRelatedResources = [...matchingTags]
      .filter((matching) => matching[1] > 0 && matching[0] !== this)
      .sort((matching1, matching2) => matching1[1] - matching2[1])
      .map((matching) => matching[0])
      .slice(0, 5);
    return sortedRelatedResources;
  }
}

declare module 'ember-data/types/registries/model' {
  export default interface ModelRegistry {
    resource: Resource;
  }
}
