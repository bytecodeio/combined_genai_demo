view: explore_assistant_examples {
  sql_table_name: `explore_assistant.explore_assistant_examples` ;;

  dimension: examples {
    type: string
    description: "Examples for Explore Assistant training. JSON document with list hashes each with input and output keys."
    sql: ${TABLE}.examples ;;
  }
  dimension: explore_id {
    type: string
    description: "Explore id of the explore to pull examples for in a format of -\u003e lookml_model:lookml_explore"
    sql: ${TABLE}.explore_id ;;
  }
  measure: count {
    type: count
  }
}
