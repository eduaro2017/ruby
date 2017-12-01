Rails.application.routes.draw do
  get '/cargo', to: 'cargo#index'
  get '/cargo', to: 'cargo#create'
  get '/cargo', to: 'cargo#destroy'

  get '/compra', to: 'compra#index'
  get '/compra', to: 'compra#create'
  get '/compra', to: 'compra#destroy'

  get '/empleado', to: 'empleado#index'
  get '/empleado', to: 'empleado#create'
  get '/empleado', to: 'empleado#destroy'

  get '/forma_pago_compra', to: 'forma_pago_compra#index'
  get '/forma_pago_compra', to: 'forma_pago_compra#create'
  get '/forma_pago_compra', to: 'forma_pago_compra#destroy'

  get '/forma_pago_venta', to: 'forma_pago_venta#index'
  get '/forma_pago_venta', to: 'forma_pago_venta#create'
  get '/forma_pago_venta', to: 'forma_pago_venta#destroy'

  get '/item_compra', to: 'item_compra#index'
  get '/item_compra', to: 'item_compra#create'
  get '/item_compra', to: 'item_compra#destroy'

  get '/item_venta', to: 'item_venta#index'
  get '/item_venta', to: 'item_venta#create'
  get '/item_venta', to: 'item_venta#destroy'

  get '/producto', to: 'producto#index'
  get '/producto', to: 'producto#create'
  get '/producto', to: 'producto#destroy'

  get '/proveedor', to: 'proveedor#index'
  get '/proveedor', to: 'proveedor#create'
  get '/proveedor', to: 'proveedor#destroy'

  get '/sucursal', to: 'sucursal#index'
  get '/sucursal', to: 'sucursal#create'
  get '/sucursal', to: 'sucursal#destroy'

  get '/venta', to: 'venta#index'
  get '/venta', to: 'venta#create'
  get '/venta', to: 'venta#destroy'



  namespace :v1 do
    resources :cargos
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
