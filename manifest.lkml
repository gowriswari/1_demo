project_name: "1_demo"

application: dashboard-summarization {
  label: "Dashboard Insights Powered by Vertex AI"
  file: "/bundle.js"
  #url: "http://localhost:8080/bundle.js"
  mount_points: {
    dashboard_vis: yes
    dashboard_tile: no
    standalone: yes
  }
  entitlements: {
    local_storage: yes
    use_form_submit: yes


    core_api_methods: ["run_inline_query","all_lookml_models","dashboard","dashboard_dashboard_elements"]
    external_api_urls: [
      "https://websocket-service-yrfr57a74a-an.a.run.app","http://localhost:5000","http://localhost:3000","https://*.googleapis.com","https://slack.com/api/*","https://slack.com/*"
    ]
    oauth2_urls: [
      "https://accounts.google.com/o/oauth2/v2/auth",
      "https://www.googleapis.com/auth/chat.spaces",
      "https://www.googleapis.com/auth/drive.metadata.readonly",
      "https://www.googleapis.com/auth/spreadsheets.readonly",
      "https://www.googleapis.com/auth/userinfo.profile",
      "https://www.googleapis.com/auth/chat.spaces.readonly",
      "https://www.googleapis.com/auth/chat.bot",
      "https://www.googleapis.com/auth/chat.messages",
      "https://www.googleapis.com/auth/chat.messages.create",
      "https://slack.com/oauth/v2/authorize"
    ]
  }
}

new_lookml_runtime: no

# application: chatter {
#   label: "Chatter"
#   # url: "https://localhost:8080/bundle.js"
#   file: "bundle.js"
#   entitlements: {
#     core_api_methods: ["me", "lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query", "run_inline_query", "all_lookml_models", "use_form_submit", "lookml_model", "create_merge_query", "merge_query"]
#     navigation: yes
#     use_embeds: yes
#     use_iframes: yes
#     new_window: yes
#   }
# }
