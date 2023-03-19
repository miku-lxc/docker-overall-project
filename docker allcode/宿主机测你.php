<?php

function display($msg) {
    echo "{$msg}<br>";
}

/*
 * 测试连接MySQL
 */
$mysqlConn = new mysqli();
$ok = $mysqlConn->real_connect('DOCKER_MYSQL', 'root', '123456');
if (!$ok) {
    exit("MySQL connect failed:" . $mysqlConn->connect_error);
}
$mysqlConn->close();
display("测试MySQL连接：OK");

/*
 * 测试连接redis
 */
$redis = new Redis();
try {
    $redis->connect('DOCKER_REDIS', 6379, 2);
} catch (Throwable $e) {
    exit("Redis connect failed:" . $e->getMessage());
}
$redis->close();
display("测试Redis连接：OK");
