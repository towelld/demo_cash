- dashboard: cash_control_summary
  title: Cash Control Summary
  layout: static
  width: 2000
  tile_size: 100
  auto_run: true
  embed_style:
  background_color: "#ffffff"
  show_title: true
  title_color: "#646569"
  show_filters_bar: true
  tile_background_color: "#ffffff"
  tile_text_color: "#646569"

  filters:

  elements:
    - name: files_loaded_chart
      title: Files_Loaded
      left: 0
      top: 0
      height: 2
      width: 5
      type: looker_bar
      model: democash
      explore: files
      dimensions: [files.file_name]
      pivots: [files.file_name]
      measures: [files.sum_records_loaded]
      sorts: [files.sum_records_loaded desc 0, files.file_name]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      stacking: ''
      show_value_labels: true
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      series_colors:
        bank.txt - Files Sum Records Loaded: "#5e8ab4"
        our.txt - Files Sum Records Loaded: "#646569"
