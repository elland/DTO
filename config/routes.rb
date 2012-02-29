Dto::Application.routes.draw do
  get 'comics/prev' => 'comics#prev', as: :prev_comics
  get 'comics/next' => 'comics#next', as: :next_comics

  get 'comics/:id' => 'comics#show', as: :show_comic

  root :to => 'comics#index'
end
