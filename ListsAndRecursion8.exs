defmodule Orders do
  def orders, do: 
    [[id: 123, ship_to: :NC, net_amount: 100.00],
     [id: 124, ship_to: :OK, net_amount:  35.50],
     [id: 125, ship_to: :TX, net_amount:  24.00],
     [id: 126, ship_to: :TX, net_amount:  44.80],
     [id: 127, ship_to: :NC, net_amount:  25.00],
     [id: 128, ship_to: :MA, net_amount:  10.00],
     [id: 129, ship_to: :CA, net_amount: 102.00],
     [id: 120, ship_to: :NC, net_amount:  50.00]]

  def tax_rates, do: [NC: 0.075, TX: 0.08]

  def tax_orders(orders, tax_rates) do
    Enum.map(orders, 
             &(Dict.put_new(&1, 
                            :total_amount, 
                            (1 + Keyword.get(tax_rates, &1[:ship_to], 0)) * &1[:net_amount])))
  end
end
