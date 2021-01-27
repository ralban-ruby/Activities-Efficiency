view: sales_cancelled_sold_last30_d {
  sql_table_name: "MASTERDATA"."SALES_CANCELLED_SOLD_LAST30D"
    ;;

  dimension: customer_status_c {
    type: string
    sql: ${TABLE}."CUSTOMER_STATUS_C" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: o_plan {
    type: string
    sql: ${TABLE}."O_PLAN" ;;
  }

  dimension: opp_name {
    type: string
    sql: ${TABLE}."OPP_NAME" ;;
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

  dimension: total_opps {
    type: number
    sql: ${TABLE}."TOTAL_OPPS" ;;
  }

  measure: count {
    type: count
    drill_fields: [name, opp_name]
  }
}
