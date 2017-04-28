- dashboard: cash_summary
  title: Cash Summary
  layout: tile
  tile_size: 100

  filters:

  elements:
    - name: current_balance
      title: Current Balance
      type: looker_column
      model: democash
      explore: records
      dimensions: [records.currency, records.post_date_date]
      pivots: [records.currency]
      fill_fields: [records.post_date_date]
      measures: [records.sum_amount]
      filters:
        records.open_date: 2016/01/29
        records.currency: ''
      sorts: [records.currency, records.post_date_date desc]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: false
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: false
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_colors:
        EUR - Records Sum Amount: "#fa8d29"
        USD - Records Sum Amount: "#646569"
