import { apiInitializer } from "discourse/lib/api";
import Component from "@ember/component";

export default apiInitializer((api) => {
  class SiteStatsSection extends Component {
    const section = <template>
    <section id="d-sidebar" class="sidebar-container">
      <div class="sidebar-sections">
        <div class="sidebar-custom-sections">
          <div data-section-name="site-statistics" class="sidebar-section sidebar-section-wrapper sidebar-section--expanded">
            <ul id="sidebar-section-content-site-statistics" class="sidebar-section-content">
              <li data-list-item-name="everything" class="sidebar-section-link-wrapper">
                <a id="ember7" class="ember-view active sidebar-section-link sidebar-row" title="All topics" data-link-name="everything" href="/latest">
                  <span class="sidebar-section-link-prefix icon">
                    <svg class="fa d-icon d-icon-layer-group svg-icon prefix-icon svg-string" xmlns="http://www.w3.org/2000/svg"><use href="#layer-group"></use></svg>
                  </span>
                  <span class="sidebar-section-link-content-text">
                    <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Topics</font></font>
                  </span>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    </template>
  }
});
