<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_login extends CI_Model{

  function login($username,$password) {
       $this->db->where('nama_admin', $username);
       $this->db->where('password_admin', $password);
       $query =  $this->db->get('admin');
       return $query->num_rows();
   }
 }
 ?>
