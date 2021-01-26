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
explore: sales_avg_sold_duration {
  hidden: yes
}
explore: sales_avg_connected_duration {
  hidden: yes
}
explore: sales_avg_cor_accepted_duration {
  hidden: yes
}
explore: sales_avg_cor_duration {
  hidden: yes
}
explore: sales_avg_mql_duration {
  hidden: yes
}
explore: sales_avg_new_lead_duration {
  hidden: yes
}
explore: sales_avg_needs_analysis_duration {
  hidden: yes
}
explore: sales_avg_onboarding_duration {
  hidden: yes
}
explore: sales_avg_proposal_duration {
  hidden: yes
}
explore: sales_avg_ttc_oppty {
  hidden: yes
}
explore: sales_avg_ttc_fullcycle {
  hidden: yes
}
explore: sales_avg_opty_value {}
datagroup: sales_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sales_default_datagroup
