from django import forms
from .models import Produk

class ProdukForm(forms.ModelForm):
    class Meta:
        model = Produk
        fields = [
            'id_produk',
            'nama_produk',
            'kategori',
            'harga',
            'status',
        ]