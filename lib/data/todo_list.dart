import 'package:flutter/material.dart';

class VaccineTodo {
  String todo;
  String description;
  dynamic icon;
  dynamic color;
  bool check;

  VaccineTodo({
    required this.todo,
    required this.description,
    required this.icon,
    required this.color,
    required this.check,
  });

  List get() {
    return vaccineTodoList;
  }
}

var vaccineTodoList = [
  VaccineTodo(
    todo: 'Cek nomor NIK',
    description:
        'Periksa Status Anda Dalam Program Vaksinasi COVID-19 di website \n\npedulilindungi.id',
    icon: Icons.fact_check,
    color: Colors.amber,
    check: false,
  ),
  VaccineTodo(
    todo: 'Datang ke penyelenggara Vaksinasi',
    description:
        'Datang ke Puskesmas/Rumah Sakit/Tempat lainnya yang menyelenggarakan Vaksinasi Covid-19 dengan membawa KTP dan KK',
    icon: Icons.location_on,
    color: Colors.red,
    check: false,
  ),
  VaccineTodo(
    todo: 'Pantau dan jaga kondisi tubuh anda',
    description:
        'Perhatikan suhu tubuh anda terhadap reaksi Vaksin. Jaga Pola makan, dan istirahat yang cukup. Tubuh anda akan mengalami reaksi yang berbeda dari efek vaksin',
    icon: Icons.self_improvement,
    color: Colors.purple,
    check: false,
  ),
  VaccineTodo(
    todo: 'Lakukan Vaksinasi kedua',
    description:
        'Datang kembali ke Puskesmas/Rumah Sakit/Tempat lainnya yang sebelumnya anda kunjungi untuk melakukan vaksinasi pertama untuk mendapatkan vaksinasi kedua dengan jadwal yang sudah ditentukan sebelumnya',
    icon: Icons.looks_two,
    color: Colors.red,
    check: false,
  ),
  VaccineTodo(
    todo: 'Cetak Sertifikat Covid-19',
    description:
        'Lakukan pendaftaran akun pada website pedulilindungi.id, dan lakukan langkah-langkah pada: \n\ncutt.ly/cetak-sertifikat-vaksin-covid-19',
    icon: Icons.fact_check,
    color: Colors.blue,
    check: false,
  ),
  VaccineTodo(
    todo: 'Selesai',
    description:
        'Selamat anda telah melaksanakan serangkaian todo list Vaksinasi Covid-19, tahap untuk ke depannya, jaga terus kesehatan anda, pola makan, rutin berolahraga, dan apabila anda memiliki keluhan yang tidak dapat ditangani sendiri, silakan hubungi nomor kontak yang tercatat pada kartu Vaksinasi Covid-19 anda',
    icon: Icons.check_circle,
    color: Colors.green,
    check: false,
  ),
];
