- dashboard: cash_summary_cms
  title: Cash Summary
  layout: static
  width: 1632
  tile_size: 68
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: true
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:
  - name: currency
    type: field_filter
    model: demo_cash
    explore: records
    field: records.currency

  elements:
    - name: current_balance
      title: Current Balance
      type: looker_column
      left: 0
      top: 0
      height: 4
      width: 6
      model: demo_cash
      explore: records
      dimensions: [records.currency, records.post_date_date]
      pivots: [records.currency]
      fill_fields: [records.post_date_date]
      measures: [records.sum_amount]
      filters:
        records.open_date: 2018/05/28
      listen:
        currency: records.currency
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

    - name: running_balance
      title: Today's Running Balance
      type: looker_area
      left: 6
      top: 0
      height: 4
      width: 16
      model: demo_cash
      explore: v_running_balance
      dimensions: [v_running_balance.currency, v_running_balance.time]
      pivots: [v_running_balance.currency]
      measures: [v_running_balance.sum_net]
      filters:
        v_running_balance.post_date: 28/05/2018
      listen:
        currency: v_running_balance.currency
      sorts: [v_running_balance.currency 0, v_running_balance.time]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: false
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      show_null_points: true
      point_style: none
      interpolation: linear
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_colors:
        EUR - V Running Balance Sum Net: "#fa8d29"
        USD - V Running Balance Sum Net: "#646569"

    - name: historic_balance
      title: Historic Balance
      type: looker_line
      left: 0
      top: 4
      height: 4
      width: 24
      model: demo_cash
      explore: v_running_balance
      dimensions: [v_running_balance.currency, v_running_balance.post_date]
      pivots: [v_running_balance.currency]
      measures: [v_running_balance.sum_net]
      listen:
        currency: v_running_balance.currency
      sorts: [v_running_balance.post_date, v_running_balance.currency]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: false
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      show_null_points: true
      point_style: none
      interpolation: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_colors:
        EUR - V Running Balance Sum Net: "#fa8d29"
        USD - V Running Balance Sum Net: "#646569"
      reference_lines: [{reference_type: line, line_value: '0', range_start: max, range_end: min,
                         margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
                         color: "#646569"}]
