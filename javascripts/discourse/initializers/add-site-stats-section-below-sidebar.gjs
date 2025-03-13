import Component from "@glimmer/component";
import { tracked } from '@glimmer/tracking';


export default class SiteStatsSection extends Component {
  @tracked siteMembers;
  @tracked siteTopics;
  @tracked sitePosts;

  get statsTemplate() {
    let siteStats = fetch("/about.json").then((response) => {return response.json()});
    this.siteMembers = siteStats.users_count;
    this.siteTopics = siteStats.topics_count;
    this.sitePosts = siteStats.posts_count;

    const section = <template>
    <section id="nd-d-sidebar" class="sidebar-container">
      <div class="sidebar-sections">
        <div class="sidebar-custom-sections">
          <div data-section-name="site-statistics" class="sidebar-section sidebar-section-wrapper sidebar-section--expanded">
            <ul id="sidebar-section-content-site-statistics" class="sidebar-section-content">
              <li data-list-item-name="everything" class="sidebar-section-link-wrapper">
                <span>
                  <h3>Statistiques</h3>
                  <p>Membres: {{this.siteMembers}}</p>
                  <p>Discussions: {{this.siteTopics}}</p>
                  <p>Messages: {{this.sitePosts}}</p>
                </span>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    </template>;
  }
}
