view: looker_lineage {
  sql_table_name: `ajimimohamed-devlab.metadata_easystay.looker_lineage` ;;

  dimension: dashboard_id {
    type: string
    sql: ${TABLE}.dashboard_id ;;
  }
  dimension: dashboard_title {
    type: string
    sql: ${TABLE}.dashboard_title ;;
  }
  dimension: explore {
    type: string
    sql: ${TABLE}.explore ;;
  }
  dimension: field_name {
    type: string
    sql: ${TABLE}.field_name ;;
  }
  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }
  dimension: tile_title {
    type: string
    sql: ${TABLE}.tile_title ;;
  }
  measure: count {
    type: count
    drill_fields: [field_name]
  }
}
