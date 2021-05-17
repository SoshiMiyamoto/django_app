from django.conf.urls import url

from . import views 

# root URLに接続するとindexが表示されるように設定
urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'index.html', views.index, name='index'),
]