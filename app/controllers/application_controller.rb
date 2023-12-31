class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

  private
    def configure_permitted_parameters #メソッド名は慣習
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:profile,:occupation,:position]) #devise_parameter_sanitizer.permit(:deviseの処理名, keys: [:許可するキー]) deviseからパラメータを取得する
    end
end
