- dashboard: cash_proof
  title: Cash Proof
  layout: static
  width: 1632
  tile_size: 68
  auto_run: true
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: true
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:
  - name: account_no
    type: field_filter
    model: demo_cash
    explore: cash_proof_ca
    field: cash_proof_ca.account_no
    default_value: "10928771"

  elements:
    - name: cash_proof
      title: Position
      type: table
      left: 0
      top: 0
      height: 12
      width: 12
      model: demo_cash
      explore: cash_proof_ca
      dimensions: [cash_proof_ca.sortorder, cash_proof_ca.label, cash_proof_ca.ours,
        cash_proof_ca.ours_count, cash_proof_ca.theirs, cash_proof_ca.theirs_count,
        cash_proof_ca.net, cash_proof_ca.net_check]
      listen:
        account_no: cash_proof_ca.account_no
      sorts: [cash_proof_ca.sortorder]
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: false
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: transparent
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      hidden_fields: [cash_proof_ca.sortorder]
      series_labels:
        cash_proof_ca.label: Description
        cash_proof_ca.ours_count: Count
        cash_proof_ca.theirs_count: Count
        cash_proof_ca.net_check: Check

    - name: aged_analysis_our
      title: Aged Analysis - Ours
      type: table
      left: 14
      top: 0
      height: 3
      width: 10
      model: demo_cash
      explore: v_cash_proof_ageing_ca
      dimensions: [v_cash_proof_ageing_ca.the_sort, v_cash_proof_ageing_ca.the_age]
      measures: [v_cash_proof_ageing_ca.sum_count, v_cash_proof_ageing_ca.sum_payment,
        v_cash_proof_ageing_ca.sum_receipt, v_cash_proof_ageing_ca.sum_balance]
      filters:
        v_cash_proof_ageing_ca.system: our
      listen:
        account_no: v_cash_proof_ageing_ca.account_no
      sorts: [v_cash_proof_ageing_ca.the_sort]
      limit: '500'
      column_limit: '50'
      total: true
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: false
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: transparent
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      hidden_fields: [v_cash_proof_ageing_ca.the_sort]
      series_types: {}
      series_labels:
        v_cash_proof_ageing_ca.the_age: Age
        v_cash_proof_ageing_ca.sum_count: Count
        v_cash_proof_ageing_ca.sum_payment: Payments
        v_cash_proof_ageing_ca.sum_receipt: Receipts
        v_cash_proof_ageing_ca.sum_balance: Net

    - name: aged_analysis_bank
      title: Aged Analysis - Bank
      type: table
      left: 14
      top: 3
      height: 3
      width: 10
      model: demo_cash
      explore: v_cash_proof_ageing_ca
      dimensions: [v_cash_proof_ageing_ca.the_sort, v_cash_proof_ageing_ca.the_age]
      measures: [v_cash_proof_ageing_ca.sum_count, v_cash_proof_ageing_ca.sum_payment,
        v_cash_proof_ageing_ca.sum_receipt, v_cash_proof_ageing_ca.sum_balance]
      filters:
        v_cash_proof_ageing_ca.system: bank
      listen:
        account_no: v_cash_proof_ageing_ca.account_no
      sorts: [v_cash_proof_ageing_ca.the_sort]
      limit: '500'
      column_limit: '50'
      total: true
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: false
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: transparent
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      hidden_fields: [v_cash_proof_ageing_ca.the_sort]
      series_types: {}
      series_labels:
        v_cash_proof_ageing_ca.the_age: Age
        v_cash_proof_ageing_ca.sum_count: Count
        v_cash_proof_ageing_ca.sum_payment: Payments
        v_cash_proof_ageing_ca.sum_receipt: Receipts
        v_cash_proof_ageing_ca.sum_balance: Net

    - name: aged_analysis
      title: Aged Analysis
      type: table
      left: 14
      top: 6
      height: 3
      width: 10
      model: demo_cash
      explore: v_cash_proof_ageing_ca
      dimensions: [v_cash_proof_ageing_ca.account_no]
      measures: [v_cash_proof_ageing_ca.sum_count, v_cash_proof_ageing_ca.sum_net_payment, v_cash_proof_ageing_ca.sum_net_receipt, v_cash_proof_ageing_ca.sum_net_balance]
      listen:
        account_no: v_cash_proof_ageing_ca.account_no
      limit: '500'
      column_limit: '50'
      total: false
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: false
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: transparent
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      series_labels:
        v_cash_proof_ageing_ca.sum_count: Count
        v_cash_proof_ageing_ca.sum_net_payment: Payments
        v_cash_proof_ageing_ca.sum_net_receipt: Receipts
        v_cash_proof_ageing_ca.sum_net_balance: Net



    - name: unmatched_records
      title: Unmatched Records
      type: table
      left: 0
      top: 12
      height: 6
      width: 24
      model: demo_cash
      explore: records
      dimensions: [records.reason, records.system, records.account_no, records.original_amount_currency,
        records.our_reference, records.sign, records.post_date_date, records.value_date,
        records.reference1, records.reference2, records.reference3, records.transaction_code,
        records.open_date]
      measures: [records.sum_amount]
      filters:
        records.match_status: Unmatched
      listen:
        account_no: records.account_no
      sorts: [records.post_date_date desc]
      limit: '500'
      column_limit: '50'
      total: true
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: false
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: transparent
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_labels:
        records.original_amount_currency: Ccy
        records.our_reference: Reference
        records.post_date_date: Post Date
        records.reference1: Reference 1
        records.reference2: Reference 2
        records.reference3: Reference 3
        records.transaction_code: Trans Code
        records.open_date: Statement
        records.sum_amount: Amount

