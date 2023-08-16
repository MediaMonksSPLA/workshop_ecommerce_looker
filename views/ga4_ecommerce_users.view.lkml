view: ga4_ecommerce_users {
  sql_table_name: `mm-latam-growth-demos.ecommerce_looker_workshop.ga4_ecommerce_users` ;;

  dimension_group: _partitiondate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }
  dimension_group: _partitiontime {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }
  dimension: active_user {
    type: number
    sql: ${TABLE}.active_user ;;
  }
  dimension: bou_rate {
    type: number
    sql: ${TABLE}.bou_rate ;;
  }
  dimension_group: dates {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dates ;;
  }
  dimension: eng_rate {
    type: number
    sql: ${TABLE}.eng_rate ;;
  }
  dimension: new_user {
    type: number
    sql: ${TABLE}.new_user ;;
  }
  dimension: return_user {
    type: number
    sql: ${TABLE}.return_user ;;
  }
  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}
