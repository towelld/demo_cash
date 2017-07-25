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

    - name: our_ageing
      title: Aged Analysis - Ours
      type: table
      left: 12
      top: 0
      height: 4
      width: 12
      model: demo_cash
      explore: v_cash_proof_ageing_ca
      dimensions: [v_cash_proof_ageing_ca.the_sort, v_cash_proof_ageing_ca.the_age, v_cash_proof_ageing_ca.the_count,
        v_cash_proof_ageing_ca.the_payment, v_cash_proof_ageing_ca.the_receipt, v_cash_proof_ageing_ca.the_balance]
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
      hidden_fields: [v_cash_proof_ageing_ca.the_sort]
      series_labels:
        v_cash_proof_ageing_ca.the_age: Age
        v_cash_proof_ageing_ca.the_count: Count
        v_cash_proof_ageing_ca.the_payment: Payments
        v_cash_proof_ageing_ca.the_receipt: Receipts
        v_cash_proof_ageing_ca.the_balance: Net

    - name: bank_ageing
      title: Aged Analysis - Bank
      type: table
      left: 12
      top: 4
      height: 4
      width: 12
      model: demo_cash
      explore: v_cash_proof_ageing_ca
      dimensions: [v_cash_proof_ageing_ca.the_sort, v_cash_proof_ageing_ca.the_age, v_cash_proof_ageing_ca.the_count,
        v_cash_proof_ageing_ca.the_payment, v_cash_proof_ageing_ca.the_receipt, v_cash_proof_ageing_ca.the_balance]
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
      hidden_fields: [v_cash_proof_ageing_ca.the_sort]
      series_labels:
        v_cash_proof_ageing_ca.the_age: Age
        v_cash_proof_ageing_ca.the_count: Count
        v_cash_proof_ageing_ca.the_payment: Payments
        v_cash_proof_ageing_ca.the_receipt: Receipts
        v_cash_proof_ageing_ca.the_balance: Net
