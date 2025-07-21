<?php
echo "<h1>✅ WebApp merge!</h1>";

// MariaDB
$mysqli = new mysqli(getenv("DB_HOST"), getenv("DB_USER"), getenv("DB_PASSWORD"), "myapp");
if ($mysqli->connect_error) {
    echo "<p>❌ DB connection failed: " . $mysqli->connect_error . "</p>";
} else {
    echo "<p>✅ Connected to MariaDB!</p>";
}

// Redis
$redis = new Redis();
try {
    $redis->connect(getenv("REDIS_HOST"), 6379);
    echo "<p>✅ Connected to Redis!</p>";
} catch (Exception $e) {
    echo "<p>❌ Redis connection failed: " . $e->getMessage() . "</p>";
}
?>
