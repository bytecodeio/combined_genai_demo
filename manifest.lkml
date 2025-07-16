project_name: "combined_genai_demo"

constant: LOOKER_BIGQUERY_CONNECTION_NAME {
  value: "explore-assistant-test"
  export: override_required
}

local_dependency: {
  project: "aaron_test_project"
}
constant: BQML_REMOTE_CONNECTION_MODEL_ID {
  value: "explore_assistant_llm"
  export: override_required
}

application: demo_combined_genai_ea {
  label: "Combined GenAI EA"
  file: "ea.js"
  # url: "https://localhost:8080/explore_assistant.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore","run_inline_query","update_user_attribute","create_user_attribute","all_user_attributes",
      "create_query","run_query","me","run_url_encoded_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes

    global_user_attributes: ["vertex_cf_auth_token"]
    external_api_urls: ["https://explore-assistant-api-114227247293.us-central1.run.app", "https://explore-assistant-api-730192175971.us-central1.run.app","https://us-central1-explore-assistant-cf-mis.cloudfunctions.net/explore-assistant-api","https://looker-explore-assistant-mcp-rchq2jmtba-uc.a.run.app"]
    oauth2_urls: ["https://accounts.google.com/o/oauth2/v2/auth"]
  }
}



application: demo_combined_genai_ds {
  label: "Dashboard GenAI Agent"
  file: "dashboard_summarization.js"
  # url: "https://localhost:8080/dashboard_summarization.js"
  mount_points: {
    dashboard_vis: no
    dashboard_tile: yes
    standalone: no
  }


  entitlements: {
    local_storage: yes
    navigation: no
    new_window: no
    new_window_external_urls: []
    use_form_submit: yes
    use_embeds: yes
    use_iframes: yes
    use_clipboard: no
    core_api_methods: ["run_inline_query", "all_lookml_models", "dashboard", "dashboard_dashboard_elements","me","update_user_attribute","create_user_attribute","all_user_attributes","user_attribute_user_values","set_user_attribute_user_value"]
    external_api_urls: ["https://us-central1-aiplatform.googleapis.com/v1/projects/combined-genai-bi/locations/us-central1/publishers/google/models/*","https://restful-service-730192175971.us-central1.run.app/generateArbitraryResponse"]
    oauth2_urls: ["https://accounts.google.com/o/oauth2/v2/auth"]
  }
}
