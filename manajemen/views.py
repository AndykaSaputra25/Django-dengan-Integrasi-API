from django.shortcuts import render, redirect

import requests
import hashlib
import json
import pandas as pd
from datetime import datetime
from rest_framework import viewsets, status
from django.http import HttpResponse
from django.http import HttpRequest

from .models import Kategori, Status, Produk
from .serializers import KategoriSerializer, StatusSerializer, ProdukSerializer
from .forms import ProdukForm

def dataApi():
    url = "https://recruitment.fastprint.co.id/tes/api_tes_programmer"
    username = "tesprogrammer" + datetime.now().strftime("%d%m%y") + "C19"
    password = "bisacoding-" + datetime.now().strftime("%d-%m-%y")
    # Hash the password using MD5
    hashed_password = hashlib.md5(password.encode()).hexdigest()

    # Data yang akan dikirimkan
    data_to_send = {
        "username": username,
        "password": hashed_password
    }

    response = requests.post(url, data=data_to_send)
    data = response.json()
    data_api = data['data']
    
    return data_api

def addKategori():
    dataApi()
    df_kategori = pd.DataFrame(dataApi)
    df_kategori = df_kategori['kategori'].unique()
    df_kategori = df_kategori.tolist()
    kategori_with_info = []
    for i, nama_kategori in enumerate(df_kategori, start=1):
        kategori_with_info.append({
            'number': i,
            'nama_kategori': nama_kategori
        })
    kategori_json = json.dumps(kategori_with_info)
    serializerKategori = KategoriSerializer(data=kategori_json)
    if serializerKategori.is_valid():
        serializerKategori.save()
    return HttpResponse("Data berhasil disimpan ke database.", status=status.HTTP_201_CREATED)

def addStatus():
    dataApi()
    df_status = pd.DataFrame(dataApi)
    df_status = df_status['status'].unique()
    df_status = df_status.tolist()
    status_with_info = []
    for i, nama_status in enumerate(df_status):
        status_with_info.append({
            'number': i,
            'nama_status': nama_status
        })
    status_json = json.dumps(status_with_info)
    serializerStatus = StatusSerializer(data=status_json)
    if serializerStatus.is_valid():
        serializerStatus.save()
    return HttpResponse("Data berhasil disimpan ke database.", status=status.HTTP_201_CREATED)

def addProduk():
    dataApi()
    for item in dataApi:
        serializerProduk = ProdukSerializer(data=item)
        if serializerProduk.is_valid():
            serializerProduk.save()

    return HttpResponse("Data berhasil disimpan ke database.", status=status.HTTP_201_CREATED)

def index(request):
    produk = Produk.objects.all()
    dijual = Produk.objects.filter(status=0)
    context = {
        'title': 'Fast Print',
        'heading': 'Selamat Datang',
        'Produk': produk,
        'Dijual': dijual,
    }
    return render(request, 'index.html', context)

def update(request, update_id):
    produk_update = Produk.objects.get(id_produk=update_id)

    data = {
        'id_produk': produk_update.id_produk,
        'nama_produk': produk_update.nama_produk,
        'kategori': produk_update.kategori,
        'harga': produk_update.harga,
        'status': produk_update.status,
    }
    produk_form = ProdukForm(request.POST or None, initial=data, instance=produk_update)

    if request.method == 'POST':
        if produk_form.is_valid():
            produk_form.save()

            return redirect('manajemen:list')
        
    context = {
        "title" : "Update Produk",
        "produk_form" : produk_form,
    }

    return render(request, 'create.html', context)

def delete(request, delete_id):
    Produk.objects.filter(id_produk=delete_id).delete()
    return redirect('manajemen:list')

def create(request):
    produk_form =ProdukForm(request.POST or None)

    if request.method == 'POST':
        if produk_form.is_valid():
            produk_form.save()

        return redirect('manajemen:list')
    
    context = {
        'title' : 'Tambah Produk',
        'produk_form' : produk_form,
    }

    return render(request,'create.html', context)

def list(request):
    produk = Produk.objects.all()
    context = {
        'title' : 'Manajemen Data Produk',
        'Produk' : produk,
    }
    return render(request, 'list.html', context)


class KategoriViewSet(viewsets.ModelViewSet):
    queryset = Kategori.objects.all()
    serializer_class = KategoriSerializer

class StatusViewSet(viewsets.ModelViewSet):
    queryset = Status.objects.all()
    serializer_class = StatusSerializer

class ProdukViewSet(viewsets.ModelViewSet):
    queryset = Produk.objects.all()
    serializer_class = ProdukSerializer
