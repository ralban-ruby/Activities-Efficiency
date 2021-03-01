view: frustrated_caller {
  sql_table_name: "MASTERDATA"."FRUSTRATED_CALLER"
    ;;

  dimension: call_id {
    type: number
    sql: ${TABLE}."CALL_ID" ;;
  }

  dimension: call_result_description {
    type: string
    sql: ${TABLE}."CALL_RESULT_DESCRIPTION" ;;
  }

  dimension: call_tag_description {
    type: string
    sql: ${TABLE}."CALL_TAG_DESCRIPTION" ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}."CLIENT_ID" ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}."COMPANY_ID" ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}."COMPANY_NAME" ;;
  }

  dimension: from_company {
    type: string
    sql: ${TABLE}."FROM_COMPANY" ;;
  }

  dimension: from_name {
    type: string
    sql: ${TABLE}."FROM_NAME" ;;
  }

  dimension: from_number {
    type: string
    sql: ${TABLE}."FROM_NUMBER" ;;
  }

  dimension: message_text {
    type: string
    sql: ${TABLE}."MESSAGE_TEXT" ;;
  }

  dimension: receptionist_description {
    type: string
    sql: ${TABLE}."RECEPTIONIST_DESCRIPTION" ;;
  }

  dimension_group: start_time_pst {
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
    sql: ${TABLE}."START_TIME_PST" ;;
  }

  measure: count {
    type: count
    drill_fields: [company_name, from_name]
  }
}
