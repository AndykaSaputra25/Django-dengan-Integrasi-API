from django.contrib import admin
from django.urls import path, include

from manajemen import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='index'),
    path('manajemen/', include(('manajemen.urls', 'manajemen'), namespace='manajemen')),
]
