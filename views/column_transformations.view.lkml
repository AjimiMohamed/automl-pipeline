view: column_transformations {
  sql_table_name: `metadata_easystay.column_transformations` ;;

  dimension: attribute_name {
    type: string
    sql: ${TABLE}.attribute_name ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }



  measure: count {
    type: count
    drill_fields: [attribute_name, table_name]
  }
  dimension: target_type {
    type: string
    sql: ${TABLE}.target_type ;;
  }
  # Action dimension that doesn't rely on current row values.
  dimension: transformation_rule {
    type: string
    sql: ${TABLE}.transformation_rule ;;


}
  # Add a special action dimension:
  dimension: load_static_data_action {
    type: string
    sql: ' ' ;;

    action: {
      label: "Load Static Data"
      url: "https://europe-west1-ajimimohamed-devlab.cloudfunctions.net/populate-static-tables"

      # Pass the currently selected row's table_name as a param
      param: {
        name: "table_name"
        value: "{{ column_transformations.table_name._value }}"
      }

      # Add other form parameters if needed, for example:
      form_param: {
        name: "static_data_json"
        type: textarea
        label: "Static Data JSON"
        required: yes
      }
    }
  }
  }
