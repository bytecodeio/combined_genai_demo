project_name: "combined_genai_demo"

application: combined_genai_ea {
  label: "Combined Gen AI - EA"
  file: "ea.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
    external_api_urls: ["https://us-central1-explore-assistant-test.cloudfunctions.net/explore-assistant-api"]
  }
}
