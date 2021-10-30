view: v_cash_proof_ca {
  sql_table_name: dbo.v_cash_proof_ca ;;

  dimension: account_no {
    type: string
    sql: ${TABLE}.AccountNo ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
    html: {% if v_cash_proof_ca.label._value == "Credits" %}
    <p align="center">{{ rendered_value }}</p>
    {% elsif v_cash_proof_ca.label._value == "Debits" %}
    <p align="center">{{ rendered_value }}</p>
    {% else %}
    <p align="left">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: net {
    type: string
    sql: ${TABLE}.net ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: net_check {
    type: string
    sql: ${TABLE}.net_check ;;
    html: {% if v_cash_proof_ca.net_check._value == "TRUE" %}
    <p align="left"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjFBMTA0QUZEREFGMTExRTVCNTlEQzRGRTZBRUNCOURFIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjFBMTA0QUZFREFGMTExRTVCNTlEQzRGRTZBRUNCOURFIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MUExMDRBRkJEQUYxMTFFNUI1OURDNEZFNkFFQ0I5REUiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MUExMDRBRkNEQUYxMTFFNUI1OURDNEZFNkFFQ0I5REUiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5qUYmCAAAB2ElEQVR42oSSzWsTQRiH33dm9iPJplFrKrhZClJsBUUQGhsPHhR68V+o0hYvXv1fPAiiVlu9evHoRVHy0YMFLyKiIVnxA7VpQrObnXnHKUkTayHuZXZmnmfm5fcOfu98eNO4V9+uwv++6SPFS8FN8bJ+J9zZGkuSBkBg5lBJMYtkewyLgAn1pIoQjAUGZmNp1lO7xmEoehT1F8VwWwNifxzQPJI7yFipsJK2crUvT7vJtlln+zQoipWK9N4vMsBItszJF4PlYuHGXH4xn5npkwNBqlgwmzGbSJppt9dmyBeClZK/bK7d+vYsbL89UNLRlH926lrKntwMn5jQUla2FKzOF65rDZXwUbXxQGsleHok5L1ZP3fBz54TaL9u3p2bvDp/cklrqjU3KuEaaWnzzIEbPv16lajdy9O3zhxfPOHN5lxfUWLocuM+gXa5p/fDGAiR7Lz7+jxJuldO3c57M5KizfBxpblGoBw+oYGGYQ6EtHWMo/P+5wtLOAvB6uff5XLjodLKFdm/6ZFgqnSER5DUWzXT/x+dj6TJFaNK/hX6jsVchtiKQw3K4s5heq8PU5nTw16bJwDAu0mbgBD5YdrAGMtONVw32ZsQx70rZP7E+aK/9EeAAQBDitR9irYsHAAAAABJRU5ErkJggg==" alt="" /></p>
    {% elsif v_cash_proof_ca.net_check._value == "FALSE" %}
    <p align="left"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkFCMzM2QUM0REIwMTExRTU4NzRGOTQ0RTk4QjRDMkYyIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkFCMzM2QUM1REIwMTExRTU4NzRGOTQ0RTk4QjRDMkYyIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QUIzMzZBQzJEQjAxMTFFNTg3NEY5NDRFOThCNEMyRjIiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QUIzMzZBQzNEQjAxMTFFNTg3NEY5NDRFOThCNEMyRjIiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7DCqevAAABV0lEQVR42oxRTatBURRd93RTemVEGUnimiEDKb9D+Uo+QpkoQyaiGFEGRgYmDJWR/8CIkUQmRqKka4j79snt3a73eqzOYK999jp773UEZbNBv4/5HG8RCCCXE5RSCcslPoTXyyDLb4qMRi2WZaaRUAjTKbJZXXUshskEweBPgunu6LFoFOm0mgmHaWgYDIjH4XY/c6Im6PVQq8FiQSSC242ffJ7nj0eMRlivn1WCkslgt1M1TifqdVitEAROHw9e3eloHjocTDfxdotWC9erSilot18cZ6+e2O34+lJjmt5me7kXdYympy0Zw/mM+x1mM4pFmEwYDP7qkEqhUODVhwOqVZTLfAGiyST3mvQ6AT3p9/PgdEK3i9UK+z0qFa4heDzw+X65JIpoNjEeYzbT2rpcvG2jgcvl6ZLe1rfgtkoSPockCQqZPRxiseDf9A9oe1ojkfgWYABU+HIrnVD3ewAAAABJRU5ErkJggg==" alt="" /></p>
    {% else %}
    <p align="right">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: ours {
    type: string
    sql: ${TABLE}.ours ;;
    html: {% if v_cash_proof_ca.label._value == " " and v_cash_proof_ca.ours._value != " " %}
    <p align="right" style="border-top:solid;border-width:1px">{{ rendered_value }}</p>
    {% else %}
    <p align="right">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: ours_count {
    type: string
    sql: ${TABLE}.ours_count ;;
    html: {% if v_cash_proof_ca.ours_count._value == "TRUE" %}
    <p align="left"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjFBMTA0QUZEREFGMTExRTVCNTlEQzRGRTZBRUNCOURFIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjFBMTA0QUZFREFGMTExRTVCNTlEQzRGRTZBRUNCOURFIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MUExMDRBRkJEQUYxMTFFNUI1OURDNEZFNkFFQ0I5REUiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MUExMDRBRkNEQUYxMTFFNUI1OURDNEZFNkFFQ0I5REUiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5qUYmCAAAB2ElEQVR42oSSzWsTQRiH33dm9iPJplFrKrhZClJsBUUQGhsPHhR68V+o0hYvXv1fPAiiVlu9evHoRVHy0YMFLyKiIVnxA7VpQrObnXnHKUkTayHuZXZmnmfm5fcOfu98eNO4V9+uwv++6SPFS8FN8bJ+J9zZGkuSBkBg5lBJMYtkewyLgAn1pIoQjAUGZmNp1lO7xmEoehT1F8VwWwNifxzQPJI7yFipsJK2crUvT7vJtlln+zQoipWK9N4vMsBItszJF4PlYuHGXH4xn5npkwNBqlgwmzGbSJppt9dmyBeClZK/bK7d+vYsbL89UNLRlH926lrKntwMn5jQUla2FKzOF65rDZXwUbXxQGsleHok5L1ZP3fBz54TaL9u3p2bvDp/cklrqjU3KuEaaWnzzIEbPv16lajdy9O3zhxfPOHN5lxfUWLocuM+gXa5p/fDGAiR7Lz7+jxJuldO3c57M5KizfBxpblGoBw+oYGGYQ6EtHWMo/P+5wtLOAvB6uff5XLjodLKFdm/6ZFgqnSER5DUWzXT/x+dj6TJFaNK/hX6jsVchtiKQw3K4s5heq8PU5nTw16bJwDAu0mbgBD5YdrAGMtONVw32ZsQx70rZP7E+aK/9EeAAQBDitR9irYsHAAAAABJRU5ErkJggg==" alt="" /></p>
    {% elsif v_cash_proof_ca.ours_count._value == "FALSE" %}
    <p align="left"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkFCMzM2QUM0REIwMTExRTU4NzRGOTQ0RTk4QjRDMkYyIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkFCMzM2QUM1REIwMTExRTU4NzRGOTQ0RTk4QjRDMkYyIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QUIzMzZBQzJEQjAxMTFFNTg3NEY5NDRFOThCNEMyRjIiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QUIzMzZBQzNEQjAxMTFFNTg3NEY5NDRFOThCNEMyRjIiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7DCqevAAABV0lEQVR42oxRTatBURRd93RTemVEGUnimiEDKb9D+Uo+QpkoQyaiGFEGRgYmDJWR/8CIkUQmRqKka4j79snt3a73eqzOYK999jp773UEZbNBv4/5HG8RCCCXE5RSCcslPoTXyyDLb4qMRi2WZaaRUAjTKbJZXXUshskEweBPgunu6LFoFOm0mgmHaWgYDIjH4XY/c6Im6PVQq8FiQSSC242ffJ7nj0eMRlivn1WCkslgt1M1TifqdVitEAROHw9e3eloHjocTDfxdotWC9erSilot18cZ6+e2O34+lJjmt5me7kXdYympy0Zw/mM+x1mM4pFmEwYDP7qkEqhUODVhwOqVZTLfAGiyST3mvQ6AT3p9/PgdEK3i9UK+z0qFa4heDzw+X65JIpoNjEeYzbT2rpcvG2jgcvl6ZLe1rfgtkoSPockCQqZPRxiseDf9A9oe1ojkfgWYABU+HIrnVD3ewAAAABJRU5ErkJggg==" alt="" /></p>
    {% else %}
    <p align="right">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: sortorder {
    type: number
    sql: ${TABLE}.sortorder ;;
  }

  dimension: theirs {
    type: string
    sql: ${TABLE}.theirs ;;
    html: {% if v_cash_proof_ca.label._value == " " and v_cash_proof_ca.theirs._value != " " %}
    <p align="right" style="border-top:solid;border-width:1px">{{ rendered_value }}</p>
    {% else %}
    <p align="right">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: theirs_count {
    type: string
    sql: ${TABLE}.theirs_count ;;
    html: {% if v_cash_proof_ca.theirs_count._value == "TRUE" %}
    <p align="left"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjFBMTA0QUZEREFGMTExRTVCNTlEQzRGRTZBRUNCOURFIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjFBMTA0QUZFREFGMTExRTVCNTlEQzRGRTZBRUNCOURFIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MUExMDRBRkJEQUYxMTFFNUI1OURDNEZFNkFFQ0I5REUiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MUExMDRBRkNEQUYxMTFFNUI1OURDNEZFNkFFQ0I5REUiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5qUYmCAAAB2ElEQVR42oSSzWsTQRiH33dm9iPJplFrKrhZClJsBUUQGhsPHhR68V+o0hYvXv1fPAiiVlu9evHoRVHy0YMFLyKiIVnxA7VpQrObnXnHKUkTayHuZXZmnmfm5fcOfu98eNO4V9+uwv++6SPFS8FN8bJ+J9zZGkuSBkBg5lBJMYtkewyLgAn1pIoQjAUGZmNp1lO7xmEoehT1F8VwWwNifxzQPJI7yFipsJK2crUvT7vJtlln+zQoipWK9N4vMsBItszJF4PlYuHGXH4xn5npkwNBqlgwmzGbSJppt9dmyBeClZK/bK7d+vYsbL89UNLRlH926lrKntwMn5jQUla2FKzOF65rDZXwUbXxQGsleHok5L1ZP3fBz54TaL9u3p2bvDp/cklrqjU3KuEaaWnzzIEbPv16lajdy9O3zhxfPOHN5lxfUWLocuM+gXa5p/fDGAiR7Lz7+jxJuldO3c57M5KizfBxpblGoBw+oYGGYQ6EtHWMo/P+5wtLOAvB6uff5XLjodLKFdm/6ZFgqnSER5DUWzXT/x+dj6TJFaNK/hX6jsVchtiKQw3K4s5heq8PU5nTw16bJwDAu0mbgBD5YdrAGMtONVw32ZsQx70rZP7E+aK/9EeAAQBDitR9irYsHAAAAABJRU5ErkJggg==" alt="" /></p>
    {% elsif v_cash_proof_ca.theirs_count._value == "FALSE" %}
    <p align="left"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkFCMzM2QUM0REIwMTExRTU4NzRGOTQ0RTk4QjRDMkYyIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkFCMzM2QUM1REIwMTExRTU4NzRGOTQ0RTk4QjRDMkYyIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QUIzMzZBQzJEQjAxMTFFNTg3NEY5NDRFOThCNEMyRjIiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QUIzMzZBQzNEQjAxMTFFNTg3NEY5NDRFOThCNEMyRjIiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7DCqevAAABV0lEQVR42oxRTatBURRd93RTemVEGUnimiEDKb9D+Uo+QpkoQyaiGFEGRgYmDJWR/8CIkUQmRqKka4j79snt3a73eqzOYK999jp773UEZbNBv4/5HG8RCCCXE5RSCcslPoTXyyDLb4qMRi2WZaaRUAjTKbJZXXUshskEweBPgunu6LFoFOm0mgmHaWgYDIjH4XY/c6Im6PVQq8FiQSSC242ffJ7nj0eMRlivn1WCkslgt1M1TifqdVitEAROHw9e3eloHjocTDfxdotWC9erSilot18cZ6+e2O34+lJjmt5me7kXdYympy0Zw/mM+x1mM4pFmEwYDP7qkEqhUODVhwOqVZTLfAGiyST3mvQ6AT3p9/PgdEK3i9UK+z0qFa4heDzw+X65JIpoNjEeYzbT2rpcvG2jgcvl6ZLe1rfgtkoSPockCQqZPRxiseDf9A9oe1ojkfgWYABU+HIrnVD3ewAAAABJRU5ErkJggg==" alt="" /></p>
    {% else %}
    <p align="right">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  measure: count {
    type: count
    drill_fields: []
    html: <p align="right">{{ rendered_value }}</p> ;;
  }
}
