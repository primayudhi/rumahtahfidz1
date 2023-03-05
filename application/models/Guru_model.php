<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Guru_model extends CI_Model
{
    public function get_all_guru()
    {
        return $this->db->get('data_guru')->result();
    }

    public function delete_guru($id_guru)
    {
        $this->db->where('id_guru', $id_guru);
        $this->db->delete('data_guru');
    }
}

?>