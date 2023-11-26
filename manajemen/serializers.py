from rest_framework import serializers
from .models import Produk, Kategori, Status

class KategoriSerializer(serializers.ModelSerializer):
    class Meta:
        model = Kategori
        fields = '__all__'

class StatusSerializer(serializers.ModelSerializer):
    class Meta:
        model = Status
        fields = '__all__'

class ProdukSerializer(serializers.ModelSerializer):
    kategori = serializers.CharField(source='kategori_id')
    status = serializers.CharField(source='status_id')
    class Meta:
        model = Produk
        fields = ['id_produk', 'nama_produk', 'kategori', 'harga', 'status']

    def create(self, validated_data):
        validated_data.pop('no', None)
        kat = list(Kategori.objects.values_list('nama_kategori', flat=True))
        for i in range(len(kat)):
            if validated_data['kategori_id'] == kat[i]:
                kategori_objek = Kategori.objects.get(nama_kategori=validated_data['kategori_id'])
                id_kategori_hasil = kategori_objek.id_kategori
                validated_data['kategori_id'] = id_kategori_hasil
        status_objek = Status.objects.get(nama_status=validated_data['status_id'])
        id_status_hasil = status_objek.id_status
        validated_data['status_id'] = id_status_hasil

        instance = Produk.objects.create(**validated_data)

        return instance