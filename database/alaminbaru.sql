/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     5/15/18 8:58:32 AM                           */
/*==============================================================*/


drop table if exists ADMIN;

drop table if exists CIRI_KHAS_ANAK;

drop table if exists DATA_TEMPAT_TINGGAL;

drop table if exists GAMBAR;

drop table if exists HASIL;

drop table if exists INPUT;

drop table if exists INPUT2;

drop table if exists JENJANG;

drop table if exists KELAHIRAN_ANAK;

drop table if exists KELUARGA;

drop table if exists KEMAMPUAN_ANAK;

drop table if exists KESEHATAN_ANAK;

drop table if exists KONDISI_KELUARGA;

drop table if exists KUISINONER;

drop table if exists MAPEL;

drop table if exists MENENTUKAN;

drop table if exists NILAI_PSIKOTEST;

drop table if exists NILAI_TEST;

drop table if exists PEMBAYARAN;

drop table if exists RIWAYAT_SEKOLAH;

drop table if exists SAUDARA_KANDUNG_ANAK;

drop table if exists SISWA;

drop table if exists USER;

/*==============================================================*/
/* Table: ADMIN                                                 */
/*==============================================================*/
create table ADMIN
(
   ID_ADMIN             varchar(6) not null,
   NAMA_ADMIN           varchar(100),
   JENIS_KELAMIN        varchar(100),
   NO_TELP              numeric(13,0),
   STATUS               varchar(100),
   USERNAME_ADMIN       varchar(100),
   PASSWORD_ADMIN       varchar(100),
   primary key (ID_ADMIN)
);

/*==============================================================*/
/* Table: CIRI_KHAS_ANAK                                        */
/*==============================================================*/
create table CIRI_KHAS_ANAK
(
   ID_CIRIKHAS_ANAK     varchar(6) not null,
   ID_SISWA             varchar(9),
   CIRI_FISIK_YANG_MENONJOL varchar(100),
   CIRI_KEPRIBADIAN_YANG_MENONJOL varchar(100),
   BAKAT_KHUSUS_YANG_MENONJOL varchar(100),
   PRESTASI_YANG_PERNAH_DIRAIH varchar(100),
   primary key (ID_CIRIKHAS_ANAK)
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
   ID_SISWA             varchar(9),
   STATUS_TERIMA        varchar(100),
   TOTAL_NILAI          int,
   primary key (ID_HASIL)
);

/*==============================================================*/
/* Table: INPUT                                                 */
/*==============================================================*/
create table INPUT
(
   ID_ADMIN             varchar(6) not null,
   ID_NILAI_PSIKOTEST   varchar(9) not null,
   primary key (ID_ADMIN, ID_NILAI_PSIKOTEST)
);

/*==============================================================*/
/* Table: INPUT2                                                */
/*==============================================================*/
create table INPUT2
(
   ID_ADMIN             varchar(6) not null,
   ID_NILAI_TEST        varchar(9) not null,
   primary key (ID_ADMIN, ID_NILAI_TEST)
);

/*==============================================================*/
/* Table: JENJANG                                               */
/*==============================================================*/
create table JENJANG
(
   ID_JENJANG           varchar(9) not null,
   ID_USER              varchar(6),
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
   ID_SISWA             varchar(9),
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
/* Table: KONDISI_KELUARGA                                      */
/*==============================================================*/
create table KONDISI_KELUARGA
(
   ID_KONDISI_KELUARGA  varchar(6) not null,
   ID_SISWA             varchar(9),
   PERTANYAAN_KONDISI   text,
   JAWABAN_KONDISI      text,
   primary key (ID_KONDISI_KELUARGA)
);

/*==============================================================*/
/* Table: KUISINONER                                            */
/*==============================================================*/
create table KUISINONER
(
   ID_KUISINONER        varchar(9) not null,
   ID_SISWA             varchar(9),
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
   ID_NILAI_PSIKOTEST   varchar(9),
   ID_NILAI_TEST        varchar(9),
   NAMA_MAPEL           varchar(100),
   primary key (ID_MAPEL)
);

/*==============================================================*/
/* Table: MENENTUKAN                                            */
/*==============================================================*/
create table MENENTUKAN
(
   ID_ADMIN             varchar(6) not null,
   ID_HASIL             varchar(9) not null,
   primary key (ID_ADMIN, ID_HASIL)
);

/*==============================================================*/
/* Table: NILAI_PSIKOTEST                                       */
/*==============================================================*/
create table NILAI_PSIKOTEST
(
   ID_NILAI_PSIKOTEST   varchar(9) not null,
   ID_MAPEL             varchar(9),
   ID_SISWA             varchar(9),
   NILAI_PSIKOTEST      int,
   primary key (ID_NILAI_PSIKOTEST)
);

/*==============================================================*/
/* Table: NILAI_TEST                                            */
/*==============================================================*/
create table NILAI_TEST
(
   ID_NILAI_TEST        varchar(9) not null,
   ID_SISWA             varchar(9),
   ID_MAPEL             varchar(9),
   NILAI_TEST           int,
   JUMLAH_NILAI_TEST    int,
   RATA_RATA_NILAI_TEST float(15),
   primary key (ID_NILAI_TEST)
);

/*==============================================================*/
/* Table: PEMBAYARAN                                            */
/*==============================================================*/
create table PEMBAYARAN
(
   ID_PEMBAYARAN        varchar(9) not null,
   ID_ADMIN             varchar(6),
   ID_SISWA             varchar(9),
   STATUS_PEMBAYARAN    varchar(12),
   primary key (ID_PEMBAYARAN)
);

/*==============================================================*/
/* Table: RIWAYAT_SEKOLAH                                       */
/*==============================================================*/
create table RIWAYAT_SEKOLAH
(
   ID_RIWAYATSEKOLAH    varchar(6) not null,
   ID_SISWA             varchar(9),
   NAMA_SEKOLAH         varchar(100),
   MASUK_TAHUN          int,
   TAMAT_TAHUN          int,
   ALAMAT_SEKOLAH       varchar(100),
   KESULITANYANGDIALAMISAATSEKOLAH text,
   AKTIFITASYANGDISUKAI text,
   primary key (ID_RIWAYATSEKOLAH)
);

/*==============================================================*/
/* Table: SAUDARA_KANDUNG_ANAK                                  */
/*==============================================================*/
create table SAUDARA_KANDUNG_ANAK
(
   ID_SAUDARA_KANDUNG   varchar(9) not null,
   ID_SISWA             varchar(9),
   NAMA_SAUDARA_KANDUNG varchar(100),
   JK_ADMIN             varchar(100),
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
   ID_KELUARGA          varchar(9),
   ID_KELAHIRAN_ANAK    varchar(9),
   ID_KONDISI_KELUARGA  varchar(6),
   ID_NILAI_TEST        varchar(9),
   ID_KESEHATAN_ANAK    varchar(9),
   ID_NILAI_PSIKOTEST   varchar(9),
   ID_USER              varchar(6),
   ID_HASIL             varchar(9),
   ID_PEMBAYARAN        varchar(9),
   NAMA_SISWA           varchar(100),
   NAMA_PANGGILAN       varchar(100),
   TTL_SISWA            varchar(100),
   USIA_1JULI           int,
   JK_SISWA             varchar(100),
   AGAMA_SISWA          varchar(100),
   KEWARGANEGARAAN      varchar(100),
   TINGGAL_BERSAMA      varchar(100),
   ANAK_KE              int,
   primary key (ID_SISWA)
);

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table USER
(
   ID_USER              varchar(6) not null,
   ID_JENJANG           varchar(9),
   ID_SISWA             varchar(9),
   NAMA_USER            varchar(100),
   EMAIL_USER           varchar(100),
   PASSWORD_USER        varchar(100),
   primary key (ID_USER)
);

alter table CIRI_KHAS_ANAK add constraint FK_MEMILIKI7 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table DATA_TEMPAT_TINGGAL add constraint FK_MEMILIKI4 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table GAMBAR add constraint FK_SCAN foreign key (ID_PEMBAYARAN)
      references PEMBAYARAN (ID_PEMBAYARAN) on delete restrict on update restrict;

alter table HASIL add constraint FK_MEMILIKI24 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table INPUT add constraint FK_INPUT foreign key (ID_ADMIN)
      references ADMIN (ID_ADMIN) on delete restrict on update restrict;

alter table INPUT add constraint FK_INPUT2 foreign key (ID_NILAI_PSIKOTEST)
      references NILAI_PSIKOTEST (ID_NILAI_PSIKOTEST) on delete restrict on update restrict;

alter table INPUT2 add constraint FK_INPUT3 foreign key (ID_ADMIN)
      references ADMIN (ID_ADMIN) on delete restrict on update restrict;

alter table INPUT2 add constraint FK_INPUT4 foreign key (ID_NILAI_TEST)
      references NILAI_TEST (ID_NILAI_TEST) on delete restrict on update restrict;

alter table JENJANG add constraint FK_MEMILIH2 foreign key (ID_USER)
      references USER (ID_USER) on delete restrict on update restrict;

alter table KELAHIRAN_ANAK add constraint FK_MEMILIKI_DATA2 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table KELUARGA add constraint FK_MEMPUNYAI2 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table KEMAMPUAN_ANAK add constraint FK_MEMILIKI6 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table KESEHATAN_ANAK add constraint FK_MEMILIKI15 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table KONDISI_KELUARGA add constraint FK_MEMILIKI18 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table KUISINONER add constraint FK_MEMILIKI16 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table MAPEL add constraint FK_MEMILIKI11 foreign key (ID_NILAI_TEST)
      references NILAI_TEST (ID_NILAI_TEST) on delete restrict on update restrict;

alter table MAPEL add constraint FK_MEMILIKI13 foreign key (ID_NILAI_PSIKOTEST)
      references NILAI_PSIKOTEST (ID_NILAI_PSIKOTEST) on delete restrict on update restrict;

alter table MENENTUKAN add constraint FK_MENENTUKAN foreign key (ID_ADMIN)
      references ADMIN (ID_ADMIN) on delete restrict on update restrict;

alter table MENENTUKAN add constraint FK_MENENTUKAN2 foreign key (ID_HASIL)
      references HASIL (ID_HASIL) on delete restrict on update restrict;

alter table NILAI_PSIKOTEST add constraint FK_MEMILIKI12 foreign key (ID_MAPEL)
      references MAPEL (ID_MAPEL) on delete restrict on update restrict;

alter table NILAI_PSIKOTEST add constraint FK_MEMILIKI22 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table NILAI_TEST add constraint FK_MEMILIKI10 foreign key (ID_MAPEL)
      references MAPEL (ID_MAPEL) on delete restrict on update restrict;

alter table NILAI_TEST add constraint FK_MEMILIKI20 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table PEMBAYARAN add constraint FK_MELAKUKAN2 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table PEMBAYARAN add constraint FK_VERIFIKASI foreign key (ID_ADMIN)
      references ADMIN (ID_ADMIN) on delete restrict on update restrict;

alter table RIWAYAT_SEKOLAH add constraint FK_MEMILIKI3 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table SAUDARA_KANDUNG_ANAK add constraint FK_MEMILIKI5 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

alter table SISWA add constraint FK_MELAKUKAN foreign key (ID_PEMBAYARAN)
      references PEMBAYARAN (ID_PEMBAYARAN) on delete restrict on update restrict;

alter table SISWA add constraint FK_MEMILIKI foreign key (ID_USER)
      references USER (ID_USER) on delete restrict on update restrict;

alter table SISWA add constraint FK_MEMILIKI14 foreign key (ID_KESEHATAN_ANAK)
      references KESEHATAN_ANAK (ID_KESEHATAN_ANAK) on delete restrict on update restrict;

alter table SISWA add constraint FK_MEMILIKI17 foreign key (ID_KONDISI_KELUARGA)
      references KONDISI_KELUARGA (ID_KONDISI_KELUARGA) on delete restrict on update restrict;

alter table SISWA add constraint FK_MEMILIKI19 foreign key (ID_NILAI_TEST)
      references NILAI_TEST (ID_NILAI_TEST) on delete restrict on update restrict;

alter table SISWA add constraint FK_MEMILIKI21 foreign key (ID_NILAI_PSIKOTEST)
      references NILAI_PSIKOTEST (ID_NILAI_PSIKOTEST) on delete restrict on update restrict;

alter table SISWA add constraint FK_MEMILIKI23 foreign key (ID_HASIL)
      references HASIL (ID_HASIL) on delete restrict on update restrict;

alter table SISWA add constraint FK_MEMILIKI_DATA foreign key (ID_KELAHIRAN_ANAK)
      references KELAHIRAN_ANAK (ID_KELAHIRAN_ANAK) on delete restrict on update restrict;

alter table SISWA add constraint FK_MEMPUNYAI foreign key (ID_KELUARGA)
      references KELUARGA (ID_KELUARGA) on delete restrict on update restrict;

alter table USER add constraint FK_MEMILIH foreign key (ID_JENJANG)
      references JENJANG (ID_JENJANG) on delete restrict on update restrict;

alter table USER add constraint FK_MEMILIKI2 foreign key (ID_SISWA)
      references SISWA (ID_SISWA) on delete restrict on update restrict;

