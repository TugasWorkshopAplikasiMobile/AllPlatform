/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     11/12/2017 12:00:00 AM                       */
/*==============================================================*/


drop table if exists ADMIN;

drop table if exists CIRI_KHAS_ANAK;

drop table if exists DAFTAR_ULANG;

drop table if exists DATA_TEMPAT_TINGGAL;

drop table if exists GAMBAR;

drop table if exists HASIL;

drop table if exists JADWAL_UJIAN;

drop table if exists JENJANG;

drop table if exists KELAHIRAN_ANAK;

drop table if exists KELUARGA;

drop table if exists KEMAMPUAN_ANAK;

drop table if exists KESEHATAN_ANAK;

drop table if exists KUISINONER;

drop table if exists MAPEL;

drop table if exists MEMILIKI_7;

drop table if exists NILAI_PSIKOTEST;

drop table if exists NILAI_TEST;

drop table if exists NILAI_UN;

drop table if exists PEMBAYARAN;

drop table if exists PENDAFTAR;

drop table if exists PENGUMUMAN;

drop table if exists PRESTASI;

drop table if exists RIWAYAT_SEKOLAH;

drop table if exists SAUDARA_KANDUNG_ANAK;

drop table if exists SISWA;

drop table if exists TINGKAT_PRESTASI;

drop table if exists USER;

/*==============================================================*/
/* Table: ADMIN                                                 */
/*==============================================================*/
create table ADMIN
(
   ID_ADMIN             varchar(9) not null,
   NAMA_ADMIN           varchar(100),
   JABATAN              varchar(100),
   JENIS_KELAMIN        varchar(100),
   NO_TLP               int,
   ALAMAT               varchar(100),
   STATUS               varchar(12),
   USERNAME             varchar(100),
   PASSWORD_ADMIN       varchar(100),
   primary key (ID_ADMIN)
);

/*==============================================================*/
/* Table: CIRI_KHAS_ANAK                                        */
/*==============================================================*/
create table CIRI_KHAS_ANAK
(
   ID_CIRI_KHAS_ANAK    varchar(9) not null,
   CIRI_FISIK_YANG_MENONJOL varchar(100),
   CIRI_KEPRIBADIAN_YANG_MENONJOL varchar(100),
   BAKAT_KHUSUS_YANG_MENONJOL varchar(100),
   PRESTASI_YANG_PERNAH_DIRAIH varchar(100),
   primary key (ID_CIRI_KHAS_ANAK)
);

/*==============================================================*/
/* Table: DAFTAR_ULANG                                          */
/*==============================================================*/
create table DAFTAR_ULANG
(
   ID_DAFTAR_ULANG      varchar(9) not null,
   ID_GAMBAR            varchar(9),
   STATUS               varchar(12),
   primary key (ID_DAFTAR_ULANG)
);

/*==============================================================*/
/* Table: DATA_TEMPAT_TINGGAL                                   */
/*==============================================================*/
create table DATA_TEMPAT_TINGGAL
(
   ID_DATA_TEMPAT_TINGGAL varchar(9) not null,
   ID_SISWA             varchar(9),
   STATUS_TEMPAT_TINGGAL varchar(12),
   JARAK_RUMAH_KE_SEKOLAH varchar(6),
   LUAS_BANGUNAN_RUMAH  varchar(6),
   JUMLAH_KAMAR         int,
   primary key (ID_DATA_TEMPAT_TINGGAL)
);

/*==============================================================*/
/* Table: GAMBAR                                                */
/*==============================================================*/
create table GAMBAR
(
   ID_GAMBAR            varchar(9) not null,
   ID_DAFTAR_ULANG      varchar(9),
   ID_SISWA             varchar(9),
   ID_PEMBAYARAN        varchar(9),
   GAMBAR               longblob,
   primary key (ID_GAMBAR)
);

/*==============================================================*/
/* Table: HASIL                                                 */
/*==============================================================*/
create table HASIL
(
   ID_HASIL             varchar(9) not null,
   ID_NILAI_TEST        varchar(9),
   ID_NILAI_UN          varchar(9),
   ID_NILAI_PSIKOTEST   varchar(9),
   STATUS               varchar(12),
   TOTAL_NILAI          int,
   primary key (ID_HASIL)
);

/*==============================================================*/
/* Table: JADWAL_UJIAN                                          */
/*==============================================================*/
create table JADWAL_UJIAN
(
   ID_JADWAL_UJIAN      varchar(9) not null,
   WAKTU                datetime,
   primary key (ID_JADWAL_UJIAN)
);

/*==============================================================*/
/* Table: JENJANG                                               */
/*==============================================================*/
create table JENJANG
(
   ID_JENJANG           varchar(9) not null,
   NAMA_JENJANG         varchar(100),
   primary key (ID_JENJANG)
);

/*==============================================================*/
/* Table: KELAHIRAN_ANAK                                        */
/*==============================================================*/
create table KELAHIRAN_ANAK
(
   ID_KELAHIRAN_ANAK    varchar(9) not null,
   ID_SISWA             varchar(9),
   LAMA_DLM_KANDUNGAN   varchar(100),
   KEADAAN_DLM_KANDUNGAN varchar(100),
   KEADAAN_LAHIR        varchar(100),
   PROSES_KELAHIRAN     varchar(100),
   YG_MEMBANTU_KELAHIRAN varchar(100),
   BERAT_PANJANG_KETIKA_LAHIR varchar(100),
   APGOR_SCORE          varchar(100),
   USIA_IBU_KETIKA_LAHIR varchar(100),
   primary key (ID_KELAHIRAN_ANAK)
);

/*==============================================================*/
/* Table: KELUARGA                                              */
/*==============================================================*/
create table KELUARGA
(
   ID_KELUARGA          varchar(9) not null,
   ID_SISWA             varchar(9),
   NAMA_AYAH            varchar(100),
   NAMA_IBU             varchar(100),
   AGAMA_AYAH           varchar(100),
   AGAMA_IBU            varchar(100),
   TGL_LAHIR_AYAH       varchar(100),
   TGL_LAHIR_IBU        varchar(100),
   KEWARGANEGARAAN_AYAH varchar(100),
   KEWARGANEGARAAN_IBU  varchar(100),
   PEND_TERAKHIR_AYAH   varchar(100),
   PEND_AKHIR_IBU       varchar(100),
   JUR_YG_DIAMBIL_AYAH  varchar(100),
   JUR_YG_DIAMBIL_IBU   varchar(100),
   NAMA_INSTANSI_AYAH_BEKERJA varchar(100),
   NAMA_INSTANSI_IBU_BEKERJA varchar(100),
   PANGKAT_GOL_AYAH     varchar(100),
   PANGKAT_GOL_IBU      varchar(100),
   LAMA_KERJA_AYAH_PERHARI varchar(100),
   LAMA_KERJA_IBU_PERHARI varchar(100),
   PENGHASILAN_PERBULAN_AYAH float(12,0),
   PENGHASILAN_PERBULAN_IBU float(12,0),
   JUMLAH_TANGGUNGAN_AYAH varchar(100),
   JUMLAH_TANGGUNGAN_IBU varchar(100),
   ALAMAT_RMH_AYAH      varchar(100),
   ALAMAT_RMH_IBU       varchar(100),
   ALAMAT_KANTOR_AYAH   varchar(100),
   ALAMAT_KANTOR_IBU    varchar(100),
   TLP_RMH_HP_AYAH      varchar(100),
   TLP_RMH_HP_IBU       varchar(100),
   TLP_KANTOR_AYAH      varchar(100),
   TLP_KANTOR_IBU       varchar(100),
   KESEMPATAN_BERKOMUNIKASI_DG_AYAH varchar(100),
   KESEMPATAN_BERKOMUNIKASI_DG_IBU varchar(100),
   primary key (ID_KELUARGA)
);

/*==============================================================*/
/* Table: KEMAMPUAN_ANAK                                        */
/*==============================================================*/
create table KEMAMPUAN_ANAK
(
   ID_KEMAMPUAN_ANAK    varchar(9) not null,
   AKTIVITAS            varchar(100),
   KETERANGAN           varchar(100),
   primary key (ID_KEMAMPUAN_ANAK)
);

/*==============================================================*/
/* Table: KESEHATAN_ANAK                                        */
/*==============================================================*/
create table KESEHATAN_ANAK
(
   ID_KESEHATAN_ANAK    varchar(9) not null,
   ID_SISWA             varchar(9),
   BB_TB                varchar(100),
   GOLDAR               varchar(100),
   MINUM_ASI_SELAMA     varchar(100),
   PERKEMBANGAN_DLM_2BLN varchar(100),
   KELAINAN_DLM_TUBUH   varchar(100),
   MAKANAN_TAMBAHAN_KURANG_DARI_4BLN varchar(100),
   IMUNISASI_YG_DIBERIKAN varchar(100),
   ALERGI_MAKANAN_DAN_OBAT varchar(100),
   PENGLIHATAN          varchar(100),
   PENDENGARAN          varchar(100),
   PENAMPILAN           varchar(100),
   primary key (ID_KESEHATAN_ANAK)
);

/*==============================================================*/
/* Table: KUISINONER                                            */
/*==============================================================*/
create table KUISINONER
(
   ID_KUISINONER        varchar(9) not null,
   PERTANYAAN           varchar(100),
   JAWABAN              varchar(100),
   primary key (ID_KUISINONER)
);

/*==============================================================*/
/* Table: MAPEL                                                 */
/*==============================================================*/
create table MAPEL
(
   ID_MAPEL             varchar(9) not null,
   ID_NILAI_UN          varchar(9),
   NAMA_MAPEL           varchar(100),
   primary key (ID_MAPEL)
);

/*==============================================================*/
/* Table: MEMILIKI_7                                            */
/*==============================================================*/
create table MEMILIKI_7
(
   ID_SISWA             varchar(9) not null,
   ID_CIRI_KHAS_ANAK    varchar(9) not null,
   primary key (ID_SISWA, ID_CIRI_KHAS_ANAK)
);

/*==============================================================*/
/* Table: NILAI_PSIKOTEST                                       */
/*==============================================================*/
create table NILAI_PSIKOTEST
(
   ID_NILAI_PSIKOTEST   varchar(9) not null,
   ID_HASIL             varchar(9),
   NILAI_PSIKOTEST      int,
   primary key (ID_NILAI_PSIKOTEST)
);

/*==============================================================*/
/* Table: NILAI_TEST                                            */
/*==============================================================*/
create table NILAI_TEST
(
   ID_NILAI_TEST        varchar(9) not null,
   ID_HASIL             varchar(9),
   NILAI_TEST           int,
   primary key (ID_NILAI_TEST)
);

/*==============================================================*/
/* Table: NILAI_UN                                              */
/*==============================================================*/
create table NILAI_UN
(
   ID_NILAI_UN          varchar(9) not null,
   ID_HASIL             varchar(9),
   NILAI_UN             int,
   primary key (ID_NILAI_UN)
);

/*==============================================================*/
/* Table: PEMBAYARAN                                            */
/*==============================================================*/
create table PEMBAYARAN
(
   ID_PEMBAYARAN        varchar(9) not null,
   ID_ADMIN             varchar(9),
   ID_GAMBAR            varchar(9),
   STATUS               varchar(12),
   primary key (ID_PEMBAYARAN)
);

/*==============================================================*/
/* Table: PENDAFTAR                                             */
/*==============================================================*/
create table PENDAFTAR
(
   ID_PENDAFTAR         varchar(9) not null,
   ID_KELUARGA          varchar(9),
   ID_KUISINONER        varchar(9),
   ID_KELAHIRAN_ANAK    varchar(9),
   ID_KEMAMPUAN_ANAK    varchar(9),
   ID_USER              varchar(100),
   ID_PRESTASI          varchar(9),
   ID_DATA_TEMPAT_TINGGAL varchar(9),
   ID_CIRI_KHAS_ANAK    varchar(9),
   ID_NILAI_UN          varchar(9),
   ID_SAUDARA_KANDUNG   varchar(9),
   ID_KESEHATAN_ANAK    varchar(9),
   ID_SISWA             varchar(9),
   ID_RIWAYAT_SEKOLAH   varchar(9),
   NAMA_PENDAFTAR       varchar(100),
   ASAL                 varchar(100),
   NO_TELP_PENDAFTAR    numeric(12,0),
   primary key (ID_PENDAFTAR)
);

/*==============================================================*/
/* Table: PENGUMUMAN                                            */
/*==============================================================*/
create table PENGUMUMAN
(
   ID_PENGUMUMAN        varchar(9) not null,
   STATUS               varchar(12),
   primary key (ID_PENGUMUMAN)
);

/*==============================================================*/
/* Table: PRESTASI                                              */
/*==============================================================*/
create table PRESTASI
(
   ID_PRESTASI          varchar(9) not null,
   ID_TINGKAT_PRESTASI  varchar(9),
   ID_SISWA             varchar(9),
   primary key (ID_PRESTASI)
);

/*==============================================================*/
/* Table: RIWAYAT_SEKOLAH                                       */
/*==============================================================*/
create table RIWAYAT_SEKOLAH
(
   ID_RIWAYAT_SEKOLAH   varchar(9) not null,
   NAMA_SEKOLAH         varchar(100),
   MASUK_TAHUN          int,
   TAMAT_TAHUN          int,
   ALAMAT_SEKOLAH       varchar(100),
   KESULITAN_YG_DIALAMI_SAAT_SEKOLAH varchar(100),
   AKTIFITAS_YG_DISUKAI varchar(100),
   primary key (ID_RIWAYAT_SEKOLAH)
);

/*==============================================================*/
/* Table: SAUDARA_KANDUNG_ANAK                                  */
/*==============================================================*/
create table SAUDARA_KANDUNG_ANAK
(
   ID_SAUDARA_KANDUNG   varchar(9) not null,
   ID_SISWA             varchar(9),
   NAMA_SAUDARA_KANDUNG varchar(100),
   JENIS_KELAMIN        varchar(100),
   PENDIDIKAN           varchar(100),
   KELAS                varchar(100),
   NO_INDUK             varchar(100),
   primary key (ID_SAUDARA_KANDUNG)
);

/*==============================================================*/
/* Table: SISWA                                                 */
/*==============================================================*/
create table SISWA
(
   ID_SISWA             varchar(9) not null,
   ID_NILAI_TEST        varchar(9),
   ID_PENGUMUMAN        varchar(9),
   ID_PEMBAYARAN        varchar(9),
   ID_RIWAYAT_SEKOLAH   varchar(9),
   ID_NILAI_UN          varchar(9),
   ID_KELUARGA          varchar(9),
   ID_DAFTAR_ULANG      varchar(9),
   ID_NILAI_PSIKOTEST   varchar(9),
   ID_JADWAL_UJIAN      varchar(9),
   ID_KESEHATAN_ANAK    varchar(9),
   ID_GAMBAR            varchar(9),
   ID_HASIL             varchar(9),
   ID_PRESTASI          varchar(9),
   ID_PENDAFTAR         varchar(9),
   ID_JENJANG           varchar(9),
   NAMA_SISWA           varchar(100),
   NO_TLP               int,
   ALAMAT               varchar(100),
   ASAL_SEKOLAH         varchar(100),
   NAMA_PANGGILAN       varchar(100),
   TTL                  varchar(100),
   USIA_1JULI           int,
   JENIS_KELAMIN        varchar(100),
   AGAMA                varchar(100),
   KEWARGANEGARAAN      varchar(100),
   ANAK_KE              int,
   BAHASA_SEHARI_HARI   varchar(100),
   TINGGAL_BERSAMA      varchar(100),
   primary key (ID_SISWA)
);

/*==============================================================*/
/* Table: TINGKAT_PRESTASI                                      */
/*==============================================================*/
create table TINGKAT_PRESTASI
(
   ID_TINGKAT_PRESTASI  varchar(9) not null,
   ID_PRESTASI          varchar(9),
   TINGKAT_PRESTASI     varchar(100),
   primary key (ID_TINGKAT_PRESTASI)
);

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table USER
(
   ID_USER              varchar(100) not null,
   NAMA_USER            varchar(100),
   NO_TLP               int,
   ASAL_SEKOLAH         varchar(100),
   PASSWORD_ADMIN       varchar(100),
   primary key (ID_USER)
);

alter table DAFTAR_ULANG add constraint FK_MENGUPLOAD_4 foreign key (ID_GAMBAR)
      references GAMBAR (ID_GAMBAR) on delete restrict on update restrict;

alter table DATA_TEMPAT_TINGGAL add constraint FK_MEMILIKI_7 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table GAMBAR add constraint FK_MENGUPLOAD_1 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table GAMBAR add constraint FK_MENGUPLOAD_3 foreign key (ID_PEMBAYARAN)
      references PEMBAYARAN (ID_PEMBAYARAN) on delete restrict on update restrict;

alter table GAMBAR add constraint FK_MENGUPLOAD_5 foreign key (ID_DAFTAR_ULANG)
      references DAFTAR_ULANG (ID_DAFTAR_ULANG) on delete restrict on update restrict;

alter table HASIL add constraint FK_DITAMPILKAN_1 foreign key (ID_NILAI_UN)
      references NILAI_UN (ID_NILAI_UN) on delete restrict on update restrict;

alter table HASIL add constraint FK_DITAMPILKAN_3 foreign key (ID_NILAI_PSIKOTEST)
      references NILAI_PSIKOTEST (ID_NILAI_PSIKOTEST) on delete restrict on update restrict;

alter table HASIL add constraint FK_DITAMPILKAN_5 foreign key (ID_NILAI_TEST)
      references NILAI_TEST (ID_NILAI_TEST) on delete restrict on update restrict;

alter table KELAHIRAN_ANAK add constraint FK_MEMILIKI_5 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table KELUARGA add constraint FK_MEMILIKI_2 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table KESEHATAN_ANAK add constraint FK_MEMILIKI_4 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table MAPEL add constraint FK_MEMILIKI_14 foreign key (ID_NILAI_UN)
      references NILAI_UN (ID_NILAI_UN) on delete restrict on update restrict;

alter table MEMILIKI_7 add constraint FK_MEMILIKI_8 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table MEMILIKI_7 add constraint FK_MEMILIKI_9 foreign key (ID_CIRI_KHAS_ANAK)
      references CIRI_KHAS_ANAK (ID_CIRI_KHAS_ANAK) on delete restrict on update restrict;

alter table NILAI_PSIKOTEST add constraint FK_DITAMPILKAN_2 foreign key (ID_HASIL)
      references HASIL (ID_HASIL) on delete restrict on update restrict;

alter table NILAI_TEST add constraint FK_DITAMPILKAN_4 foreign key (ID_HASIL)
      references HASIL (ID_HASIL) on delete restrict on update restrict;

alter table NILAI_UN add constraint FK_DITAMPILKAN_0 foreign key (ID_HASIL)
      references HASIL (ID_HASIL) on delete restrict on update restrict;

alter table PEMBAYARAN add constraint FK_MEMVERIFIKASI_0 foreign key (ID_ADMIN)
      references ADMIN (ID_ADMIN) on delete restrict on update restrict;

alter table PEMBAYARAN add constraint FK_MENGUPLOAD_2 foreign key (ID_GAMBAR)
      references GAMBAR (ID_GAMBAR) on delete restrict on update restrict;

alter table PENDAFTAR add constraint FK_MASUKKAN_DATA_0 foreign key (ID_RIWAYAT_SEKOLAH)
      references RIWAYAT_SEKOLAH (ID_RIWAYAT_SEKOLAH) on delete restrict on update restrict;

alter table PENDAFTAR add constraint FK_MASUKKAN_DATA_1 foreign key (ID_KELUARGA)
      references KELUARGA (ID_KELUARGA) on delete restrict on update restrict;

alter table PENDAFTAR add constraint FK_MASUKKAN_DATA_2 foreign key (ID_KESEHATAN_ANAK)
      references KESEHATAN_ANAK (ID_KESEHATAN_ANAK) on delete restrict on update restrict;

alter table PENDAFTAR add constraint FK_MASUKKAN_DATA_3 foreign key (ID_KELAHIRAN_ANAK)
      references KELAHIRAN_ANAK (ID_KELAHIRAN_ANAK) on delete restrict on update restrict;

alter table PENDAFTAR add constraint FK_MASUKKAN_DATA_4 foreign key (ID_SAUDARA_KANDUNG)
      references SAUDARA_KANDUNG_ANAK (ID_SAUDARA_KANDUNG) on delete restrict on update restrict;

alter table PENDAFTAR add constraint FK_MASUKKAN_DATA_5 foreign key (ID_DATA_TEMPAT_TINGGAL)
      references DATA_TEMPAT_TINGGAL (ID_DATA_TEMPAT_TINGGAL) on delete restrict on update restrict;

alter table PENDAFTAR add constraint FK_MASUKKAN_DATA_6 foreign key (ID_CIRI_KHAS_ANAK)
      references CIRI_KHAS_ANAK (ID_CIRI_KHAS_ANAK) on delete restrict on update restrict;

alter table PENDAFTAR add constraint FK_MASUKKAN_DATA_7 foreign key (ID_KEMAMPUAN_ANAK)
      references KEMAMPUAN_ANAK (ID_KEMAMPUAN_ANAK) on delete restrict on update restrict;

alter table PENDAFTAR add constraint FK_MASUKKAN_DATA_8 foreign key (ID_PRESTASI)
      references PRESTASI (ID_PRESTASI) on delete restrict on update restrict;

alter table PENDAFTAR add constraint FK_MASUKKAN_DATA_9 foreign key (ID_NILAI_UN)
      references NILAI_UN (ID_NILAI_UN) on delete restrict on update restrict;

alter table PENDAFTAR add constraint FK_MELAKUKAN_1 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table PENDAFTAR add constraint FK_MEMBUAT_0 foreign key (ID_USER)
      references USER (ID_USER) on delete restrict on update restrict;

alter table PENDAFTAR add constraint FK_MENGISI_0 foreign key (ID_KUISINONER)
      references KUISINONER (ID_KUISINONER) on delete restrict on update restrict;

alter table PRESTASI add constraint FK_MEMILIKI_11 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table PRESTASI add constraint FK_MEMILIKI_15 foreign key (ID_TINGKAT_PRESTASI)
      references TINGKAT_PRESTASI (ID_TINGKAT_PRESTASI) on delete restrict on update restrict;

alter table SAUDARA_KANDUNG_ANAK add constraint FK_MEMILIKI_6 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table SISWA add constraint FK_MELAKUKAN_0 foreign key (ID_PENDAFTAR)
      references PENDAFTAR (ID_PENDAFTAR) on delete restrict on update restrict;

alter table SISWA add constraint FK_MELAKUKAN_2 foreign key (ID_PEMBAYARAN)
      references PEMBAYARAN (ID_PEMBAYARAN) on delete restrict on update restrict;

alter table SISWA add constraint FK_MELAKUKAN_3 foreign key (ID_DAFTAR_ULANG)
      references DAFTAR_ULANG (ID_DAFTAR_ULANG) on delete restrict on update restrict;

alter table SISWA add constraint FK_MEMILIKI_0 foreign key (ID_JENJANG)
      references JENJANG (ID_JENJANG) on delete restrict on update restrict;

alter table SISWA add constraint FK_MEMILIKI_1 foreign key (ID_KELUARGA)
      references KELUARGA (ID_KELUARGA) on delete restrict on update restrict;

alter table SISWA add constraint FK_MEMILIKI_10 foreign key (ID_PRESTASI)
      references PRESTASI (ID_PRESTASI) on delete restrict on update restrict;

alter table SISWA add constraint FK_MEMILIKI_12 foreign key (ID_NILAI_UN)
      references NILAI_UN (ID_NILAI_UN) on delete restrict on update restrict;

alter table SISWA add constraint FK_MEMILIKI_13 foreign key (ID_RIWAYAT_SEKOLAH)
      references RIWAYAT_SEKOLAH (ID_RIWAYAT_SEKOLAH) on delete restrict on update restrict;

alter table SISWA add constraint FK_MEMILIKI_3 foreign key (ID_KESEHATAN_ANAK)
      references KESEHATAN_ANAK (ID_KESEHATAN_ANAK) on delete restrict on update restrict;

alter table SISWA add constraint FK_MEMPEROLEH_0 foreign key (ID_PENGUMUMAN)
      references PENGUMUMAN (ID_PENGUMUMAN) on delete restrict on update restrict;

alter table SISWA add constraint FK_MENGETAHUI_0 foreign key (ID_NILAI_PSIKOTEST)
      references NILAI_PSIKOTEST (ID_NILAI_PSIKOTEST) on delete restrict on update restrict;

alter table SISWA add constraint FK_MENGETAHUI_1 foreign key (ID_JADWAL_UJIAN)
      references JADWAL_UJIAN (ID_JADWAL_UJIAN) on delete restrict on update restrict;

alter table SISWA add constraint FK_MENGETAHUI_2 foreign key (ID_NILAI_TEST)
      references NILAI_TEST (ID_NILAI_TEST) on delete restrict on update restrict;

alter table SISWA add constraint FK_MENGETAHUI_3 foreign key (ID_HASIL)
      references HASIL (ID_HASIL) on delete restrict on update restrict;

alter table SISWA add constraint FK_MENGUPLOAD_0 foreign key (ID_GAMBAR)
      references GAMBAR (ID_GAMBAR) on delete restrict on update restrict;

alter table TINGKAT_PRESTASI add constraint FK_MEMILIKI_16 foreign key (ID_PRESTASI)
      references PRESTASI (ID_PRESTASI) on delete restrict on update restrict;

