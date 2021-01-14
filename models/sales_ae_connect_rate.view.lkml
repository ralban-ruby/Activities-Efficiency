view: sales_ae_connect_rate {
  sql_table_name: "MASTERDATA"."SALES_AE_CONNECT_RATE"
    ;;

  dimension_group: activity_month1 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."ACTIVITY_MONTH1" ;;
  }

  dimension_group: activity_month2 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."ACTIVITY_MONTH2" ;;
  }

  dimension: connect_rate {
    type: number
    sql: ${TABLE}."CONNECT_RATE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: name2 {
    type: string
    sql: ${TABLE}."NAME2" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: owner_id2 {
    type: string
    sql: ${TABLE}."OWNER_ID2" ;;
  }

  dimension: tasks_connected {
    type: number
    sql: ${TABLE}."TASKS_CONNECTED" ;;
  }

  dimension: tasks_total {
    type: number
    sql: ${TABLE}."TASKS_TOTAL" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: title2 {
    type: string
    sql: ${TABLE}."TITLE2" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
