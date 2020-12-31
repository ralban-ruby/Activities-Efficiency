view: sales_user_openclosedtasks {
  sql_table_name: "MASTERDATA"."SALES_USER_OPENCLOSEDTASKS"
    ;;

  dimension: closed_tasks {
    type: number
    sql: ${TABLE}."CLOSED_TASKS" ;;
  }

  dimension: open_tasks {
    type: number
    sql: ${TABLE}."OPEN_TASKS" ;;
  }

  dimension: ratio {
    type: number
    sql: ${TABLE}."RATIO" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: title2 {
    type: string
    sql: ${TABLE}."TITLE2" ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [user_name]
  }
}
