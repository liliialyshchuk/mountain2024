class WelcomeController < ApplicationController # назва контролера 'welcome' має співпадати з назвою каталогу (папки) (views/welcome)
    def index # назва методу (екшину) 'index' має співпадати з назвою файлу, що розташований в каталозі view/welcome (index.html.erb)
        render 'welcome/index'
    end

    def about 
        render 'welcome/about'
    end
end