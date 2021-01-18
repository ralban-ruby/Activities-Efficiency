connection: "master_data"

include: "*.view"
explore: sales_ringdna_callduration {
  hidden: yes
}
explore: sales_activity_efficiency {
  hidden: yes
}
explore: sales_activities_byrep_bylead {
  hidden: yes
}
explore: sales_user_openclosedtasks {
  hidden: yes
}
explore: sales_callsovertime {
  hidden: yes
}
explore: sales_ringdna_callduration_vs_numberofcalls {
  hidden: yes
}
explore: sales_queuecallsperday {
  hidden: yes
}
explore: sales_calls_per_sales_cycle {
  hidden: yes
}
explore: sales_ae_connect_rate {
  hidden: yes
}
explore: sales_avg_sold_duration {}
explore: sales_avg_connected_duration {}
datagroup: sales_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sales_default_datagroup
