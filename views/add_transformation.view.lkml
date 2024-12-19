view: add_transformation {
  derived_table: {
    sql:
      SELECT 'Add Transformation' as action_placeholder
    ;;
  }



  dimension: action_placeholder {
    type: string
    sql: ${TABLE}.action_placeholder ;;

    action: {
      label: "Add Transformation Metadata"
      url: "https://europe-west1-ajimimohamed-devlab.cloudfunctions.net/populate-metadata-table"

      form_param: {
        name: "table_name"
        type: string
        label: "Target Table Name"
        required: yes
      }

      form_param: {
        name: "attribute_name"
        type: string
        label: "Attribute Name"
        required: yes
      }

      form_param: {
        name: "target_type"
        type: select
        label: "Select Target Type"
        required: yes
        option: { name: "INT64" label: "Integer" }
        option: { name: "FLOAT64" label: "Float" }
        option: { name: "STRING" label: "String" }
        option: { name: "DATE" label: "Date" }
        default: "STRING"
      }

      form_param: {
        name: "transformation_rule"
        type: string
        label: "Transformation Rule"
        required: no
      }
    }
  }
}
