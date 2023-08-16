view: ga4_ecommerce_events {
<<<<<<< HEAD
  sql_table_name: `ecommerce_looker_workshop.ga4_ecommerce_events` ;;
=======
  sql_table_name: `mm-latam-growth-demos.ecommerce_looker_workshop.ga4_ecommerce_events` ;;
>>>>>>> branch 'master' of https://github.com/MediaMonksSPLA/workshop_ecommerce_looker

  dimension_group: dates {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dates ;;
  }
  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }
  dimension: events_titles {
    type: string
    sql: ${TABLE}.events_titles ;;
  }
  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }
  dimension: source_medium {
    type: string
    sql: ${TABLE}.source_medium ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}
