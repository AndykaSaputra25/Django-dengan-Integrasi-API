from django.urls import path, include
from rest_framework import routers
from . import views
from .views import KategoriViewSet, StatusViewSet, ProdukViewSet

router = routers.DefaultRouter()
router.register(r'kategori', KategoriViewSet)
router.register(r'status', StatusViewSet)
router.register(r'patient', ProdukViewSet)

urlpatterns = [
    path('delete/<int:delete_id>/', views.delete, name='delete'),
    path('update/<int:update_id>/', views.update, name='update'),
    path('create/', views.create, name='create'),
    path('', views.list, name='list'),
]
