import { TOC } from '@ember/component/template-only';

const Resources: TOC<{ Blocks: { default: [] } }> = <template>
  <div class='bg-white p-4 sm:p-6'>
    <div class='container mx-auto'>
      {{yield}}
    </div>
  </div>
</template>;

export default Resources;
