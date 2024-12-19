view: testtable {
  sql_table_name: `silver_dataset.testtable` ;;

  dimension: testattr {
    type: string
    sql: ${TABLE}.testattr ;;
  }

}