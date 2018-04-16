<?php

namespace Visitor;


class VisitorManager
{
    private $mysqli;

    /**
     * @var \Closure[] Callbacks to be called on each row
     */
    protected $processing = [];

    private $data = [];

    private $request_uri;

    public function __construct()
    {
        $this->mysqli = Connection::singleton();

        $this->processing = [
            'setIp_address',
            'setUser_agent',
            'setPage_url',
            'setViews_count'
        ];

    }

    public function record($url){

        $this->request_uri = $url;

        $this->getProcessedData();

        if ($this->mysqli->query($this->getSql()) === TRUE) {
            echo "New record created successfully";

        } else {
            echo "Error: " . $this->mysqli->error;
        }

    }

    public function setIp_address(){

        $this->data['ip_address'] = $_SERVER['REMOTE_ADDR'];

    }

    public function setUser_agent(){

        $this->data['user_agent'] = $_SERVER['HTTP_USER_AGENT'];

    }

    public function increment(){

       return "`views_count` = views_count+1";

    }

    public function setViews_count(){

        $this->data['views_count'] = 1;

    }

    public function setPage_url(){

        $this->data['page_url'] = $this->request_uri;

    }


    public function getProcessedData(){

        foreach ($this->processing as $callback) {
                $this->{$callback}();
        }

    }

    public function setSqlRows(){

        return implode(',', array_keys($this->data));

    }

    public function setSqlValues(){
        return "'" . implode("','", $this->data) . "'";
    }

    public function getSql(){

        $sql = "INSERT INTO visitor_list (" . $this->setSqlRows() . ")" .
        " VALUES (" . $this->setSqlValues() . ") ON DUPLICATE KEY UPDATE " . $this->increment() . " ;";

        return $sql;

    }
}