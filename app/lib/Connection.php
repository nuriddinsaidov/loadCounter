<?php


namespace Visitor;


class Connection
{
    /**
     * @var \mysqli
     */
    protected static $connection = null;

    private function __construct()
    {
    }

    protected function __clone()
    {
    }

    public function __destruct()
    {
        static::$connection->close();
    }

    /**
     * @return \mysqli
     */
    public static function singleton()
    {
        if (is_null(static::$connection)) {
            static::connect();
        }

        return static::$connection;
    }

    protected static function connect()
    {
        require_once(dirname(__FILE__) . '/../../config.php');
        static::$connection = new \mysqli(
            $cfg['db_host'],
            $cfg['db_user'],
            $cfg['db_pass'],
            $cfg['db_base']
        ) or die(mysqli_connect_error());

        static::$connection->set_charset("utf8");
    }
}