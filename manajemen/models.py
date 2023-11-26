from django.db import models
from django.core.exceptions import ValidationError

def validateNama(value):
    nama = value
    if nama == "":
        message = "Please fill out this field"
        raise ValidationError(message)
    
def validateHarga(value):
    harga = value
    if not isinstance(harga, int):
        message = "Must be a number"
        raise ValidationError(message)

class Kategori(models.Model):
    id_kategori = models.IntegerField(primary_key=True)
    nama_kategori = models.CharField(max_length=255)

    def __str__(self):
        return "{}".format(self.nama_kategori)

class Status(models.Model):
    id_status = models.IntegerField(primary_key=True)
    nama_status = models.CharField(max_length=255)

    def __str__(self):
        return "{}".format(self.nama_status)
    
class Produk(models.Model):
    id_produk = models.IntegerField(primary_key=True)
    nama_produk = models.CharField(max_length=255,
                                   validators=[validateNama])
    kategori = models.ForeignKey(Kategori, on_delete=models.CASCADE)
    harga = models.BigIntegerField(validators=[validateHarga])
    status = models.ForeignKey(Status, on_delete=models.CASCADE)

    def __str__(self):
        return "{}".format(self.nama_produk)
