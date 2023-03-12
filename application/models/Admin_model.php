<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Admin_model extends CI_Model
{
    public function get_all_admin()
    {
        return $this->db->get('data_admin')->result();
    }
    
    public function get_all_murid()
    {
        return $this->db->get('data_murid')->result();
    }

    public function delete_admin($id_user)
    {
        $this->db->where('id_user', $id_user);
        $this->db->delete('data_admin');
    }

    public function insert_murid($data)

    {
        $this->db->insert('data_murid',$data);
    }
}

?>