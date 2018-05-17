<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_siswa extends CI_Model {
	public function select_all_siswa() {
		$sql = "SELECT * FROM siswa";

		$data = $this->db->query($sql);

		return $data->result();
	}

	public function select_all() {
		$sql = " SELECT siswa.id AS id, siswa.nama AS siswa, siswa.telp AS telp, kota.nama AS kota,
		kelamin.nama AS kelamin, posisi.nama AS posisi
		FROM siswa, kota, kelamin, posisi WHERE siswa.id_kelamin = kelamin.id
		AND siswa.id_posisi = posisi.id AND siswa.id_kota = kota.id";

		$data = $this->db->query($sql);

		return $data->result();
	}

	public function select_by_id($id) {
		$sql = "SELECT siswa.id AS id_siswa, siswa.nama AS nama_siswa,
		siswa.id_kota, siswa.id_kelamin, siswa.id_posisi,
		siswa.telp AS telp, kota.nama AS kota, kelamin.nama AS kelamin,
		posisi.nama AS posisi FROM siswa, kota, kelamin, posisi WHERE
		siswa.id_kota = kota.id AND siswa.id_kelamin = kelamin.id AND
		siswa.id_posisi = posisi.id AND siswa.id = '{$id}'";

		$data = $this->db->query($sql);

		return $data->row();
	}

	public function select_by_posisi($id) {
		$sql = "SELECT COUNT(*) AS jml FROM siswa WHERE id_posisi = {$id}";

		$data = $this->db->query($sql);

		return $data->row();
	}

	public function select_by_kota($id) {
		$sql = "SELECT COUNT(*) AS jml FROM siswa WHERE id_kota = {$id}";

		$data = $this->db->query($sql);

		return $data->row();
	}

	public function update($data) {
		$sql = "UPDATE siswa SET nama='" .$data['nama'] ."', telp='" .$data['telp'] ."',
		 id_kota=" .$data['kota'] .", id_kelamin=" .$data['jk'] .",
		  id_posisi=" .$data['posisi'] ." WHERE id='" .$data['id'] ."'";

		$this->db->query($sql);

		return $this->db->affected_rows();
	}

	public function delete($id) {
		$sql = "DELETE FROM siswa WHERE id='" .$id ."'";

		$this->db->query($sql);

		return $this->db->affected_rows();
	}

	public function insert($data) {
		$id = md5(DATE('ymdhms').rand());
		$sql = "INSERT INTO siswa VALUES('{$id}','" .$data['nama'] ."','" .$data['telp'] ."'," .$data['kota'] ."," .$data['jk'] ."," .$data['posisi'] .",1)";

		$this->db->query($sql);

		return $this->db->affected_rows();
	}

	public function insert_batch($data) {
		$this->db->insert_batch('siswa', $data);

		return $this->db->affected_rows();
	}

	public function check_nama($nama) {
		$this->db->where('nama', $nama);
		$data = $this->db->get('siswa');

		return $data->num_rows();
	}

	public function total_rows() {
		$data = $this->db->get('siswa');
		return $data->num_rows();
	}
}

/* End of file M_siswa.php */
/* Location: ./application/models/M_siswa.php */
