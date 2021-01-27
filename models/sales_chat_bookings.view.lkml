view: sales_chat_bookings {
  sql_table_name: "MASTERDATA"."SALES_CHAT_BOOKINGS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: o_plan {
    type: string
    sql: ${TABLE}."O_PLAN" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."PRICE" ;;
  }

  dimension_group: sold {
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
    sql: ${TABLE}."SOLD_DATE" ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}."STAGE_NAME" ;;
  }

  dimension: total_opps {
    type: number
    sql: ${TABLE}."TOTAL_OPPS" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account_name, name, stage_name]
  }
}
