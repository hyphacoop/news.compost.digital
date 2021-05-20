---
---

window.env = {
  AIRBRAKE_PROJECT_ID: {{ site.env.AIRBRAKE_PROJECT_ID | default: 0 }},
  AIRBRAKE_PROJECT_KEY: '{{ site.env.AIRBRAKE_PROJECT_KEY }}',
  JEKYLL_ENV: '{{ site.env.JEKYLL_ENV }}',
  SPREE_URL: '{{ site.env.SPREE_URL }}'
}
