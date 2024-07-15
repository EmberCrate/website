import { LinkTo } from '@ember/routing';
import { TOC } from '@ember/component/template-only';

const Sitemap: TOC<{ Args: { model: any } }> = <template>
  <div class='bg-white p-4 sm:p-6'>
    <div class='container mx-auto'>
      <h3 class='mb-4 text-3xl font-bold'>Sitemap</h3>

      <ul class='grid-col-1 md:grid-col-2 grid gap-2 xl:grid-cols-3'>
        {{#each @model as |resource|}}
          <li>
            <LinkTo
              @route='resources.resource'
              @model={{resource.slug}}
              class='font-medium text-orange-500 hover:underline'
            >
              {{resource.title}}
            </LinkTo>
          </li>
        {{/each}}
      </ul>
    </div>
  </div>
</template>;

export default Sitemap;
