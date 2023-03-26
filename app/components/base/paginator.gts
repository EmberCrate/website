import { LinkTo } from '@ember/routing';
import { TOC } from '@ember/component/template-only';
import Resource from 'ember-crate/models/resource';
import HeroIcon from 'ember-heroicons/components/hero-icon';
import PaginationData from '@bagaar/ember-pagination/components/pagination-data';
import { hash } from '@ember/helper';

const isCurrentPage = (page: number, currentPage: number) =>
  page === currentPage;

const PageBreakButton: TOC<{}> = <template>
  <li>
    <a
      href='#'
      class='{{unless
          @isCurrent
          "border border-gray-300 bg-white px-3 py-2 leading-tight text-gray-500 hover:bg-gray-100 hover:text-gray-700"
        }}
        {{if
          @isCurrent
          "z-10 border border-blue-300 bg-blue-50 px-3 py-2 leading-tight text-blue-600 hover:bg-blue-100 hover:text-blue-700"
        }}
        '
    >
      ...
    </a>
  </li>
</template>;

const PageButton: TOC<{ Args: { pageNumber: number; isCurrent: boolean } }> =
  <template>
    <li>
      <LinkTo
        @query={{hash page=@pageNumber}}
        class='{{unless
            @isCurrent
            "border border-gray-300 bg-white px-3 py-2 leading-tight text-gray-500 hover:bg-gray-100 hover:text-gray-700"
          }}
          {{if
            @isCurrent
            "z-10 border border-blue-300 bg-blue-50 px-3 py-2 leading-tight text-blue-600 hover:bg-blue-100 hover:text-blue-700"
          }}
          '
      >
        {{@pageNumber}}
      </LinkTo>
    </li>
  </template>;

export const Paginator: TOC<{
  Args: { currentPage: number; totalItems: number };
}> = <template>
  <PaginationData
    @currentPage={{@currentPage}}
    @itemsPerPage={{10}}
    @pageMargins={{2}}
    @pageRange={{3}}
    @totalItems={{@totalItems}}
    as |data|
  >
    <nav>
      <ul class='inline-flex items-center -space-x-px'>
        <li>
          <LinkTo
            @query={{hash page=data.previousPage}}
            class='ml-0 block rounded-l-lg border border-gray-300 bg-white px-3 py-2 leading-tight text-gray-500 hover:bg-gray-100 hover:text-gray-700'
          >
            <span class='sr-only'>Previous</span>

            <HeroIcon @icon='chevron-left' @type='mini' class='h-5 w-5' />
          </LinkTo>
        </li>
        {{#each data.startMarginPages as |pageNumber|}}
          <PageButton
            @pageNumber={{pageNumber}}
            @isCurrent={{isCurrentPage pageNumber data.currentPage}}
          />
        {{/each}}
        {{#if data.shouldShowLowerBreak}}
          <PageBreakButton />
        {{/if}}
        {{#each data.pageRangePages as |pageNumber|}}
          <PageButton
            @pageNumber={{pageNumber}}
            @isCurrent={{isCurrentPage pageNumber data.currentPage}}
          />
        {{/each}}
        {{#if data.shouldShowUpperBreak}}
          <PageBreakButton />
        {{/if}}
        {{#each data.endMarginPages as |pageNumber|}}
          <PageButton
            @pageNumber={{pageNumber}}
            @isCurrent={{isCurrentPage pageNumber data.currentPage}}
          />
        {{/each}}
        <li>
          <LinkTo
            @query={{hash page=data.nextPage}}
            class='block rounded-r-lg border border-gray-300 bg-white px-3 py-2 leading-tight text-gray-500 hover:bg-gray-100 hover:text-gray-700'
          >
            <span class='sr-only'>Next</span>
            <HeroIcon @icon='chevron-right' @type='mini' class='h-5 w-5' />
          </LinkTo>
        </li>
      </ul>
    </nav>

  </PaginationData>
</template>;

export default Paginator;
