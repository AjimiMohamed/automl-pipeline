view: fact {
  sql_table_name: `silver_dataset.fact` ;;

  dimension: test2 {
    type: string
    sql: ${TABLE}.test2 ;;
  }

  dimension: test1 {
    type: string
    sql: ${TABLE}.test1 ;;
  }

}