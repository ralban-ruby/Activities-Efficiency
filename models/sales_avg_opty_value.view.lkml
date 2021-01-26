view: sales_avg_opty_value {
  sql_table_name: "MASTERDATA"."SALES_AVG_OPTY_VALUE"
    ;;

  dimension_group: close_month {
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
    sql: ${TABLE}."CLOSE_MONTH" ;;
  }

  dimension: o_id {
    type: string
    sql: ${TABLE}."O_ID" ;;
  }

  dimension: o_name {
    type: string
    sql: ${TABLE}."O_NAME" ;;
  }

  dimension: opp_id {
    type: string
    sql: ${TABLE}."Opp_ID" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."PRICE" ;;
  }

  dimension: total_opps {
    type: number
    sql: ${TABLE}."TOTAL_OPPS" ;;
  }

  measure: count {
    type: count
    drill_fields: [o_name]
  }
}
