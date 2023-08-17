view: top_terms {
  sql_table_name: `LAGs_db.top_terms` ;;

  dimension: dma_id {
    type: number
    sql: ${TABLE}.dma_id ;;
  }
  dimension: dma_name {
    type: string
    sql: ${TABLE}.dma_name ;;
  }
  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
  dimension_group: refresh {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.refresh_date ;;
  }
  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }
  dimension: term {
    type: string
    sql: ${TABLE}.term ;;
  }
  dimension_group: week {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.week ;;
  }
  measure: count {
    type: count
    drill_fields: [dma_name]
  }
}
