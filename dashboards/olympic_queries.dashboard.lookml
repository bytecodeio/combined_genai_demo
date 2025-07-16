---
- dashboard: olympic_explore_assistant_queries
  title: Olympic Explore Assistant Queries
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Mt7Fg0POjlZylFReyJRuX9
  elements:
  - title: Gold
    name: Gold
    model: explore_assistant
    explore: golden_queries
    type: looker_grid
    fields: [golden_queries.explore_id, golden_queries.input, golden_queries.output]
    sorts: [golden_queries.explore_id]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    truncate_column_names: false
    defaults_version: 1
    note_state: expanded
    note_display: above
    note_text: These queries were vetted by Business Intelligence analysts or engineers.
    listen:
      Explore Key: golden_queries.explore_id
    row: 0
    col: 0
    width: 24
    height: 7
  - title: Silver
    name: Silver
    model: explore_assistant
    explore: silver_queries
    type: looker_grid
    fields: [silver_queries.explore_key, silver_queries.user_id, silver_queries.prompt,
      silver_queries.explore_params]
    sorts: [silver_queries.explore_key]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    defaults_version: 1
    note_state: expanded
    note_display: above
    note_text: These queries are from detecting patterns of correction in LLM Conversations
    listen:
      Explore Key: silver_queries.explore_key
    row: 7
    col: 0
    width: 24
    height: 6
  - title: Bronze
    name: Bronze
    model: explore_assistant
    explore: bronze_queries
    type: looker_grid
    fields: [bronze_queries.explore_key, bronze_queries.input_question, bronze_queries.explore_params,
      bronze_queries.query_run_count]
    sorts: [bronze_queries.explore_key]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: expanded
    note_display: above
    note_text: These queries were auto-generated from historical Looker activity and
      have not been reviewed
    listen:
      Explore Key: bronze_queries.explore_key
    row: 13
    col: 0
    width: 24
    height: 7
  filters:
  - name: Explore Key
    title: Explore Key
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: explore_assistant
    explore: query_keys
    listens_to_filters: []
    field: query_keys.explore_key
