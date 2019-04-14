<?php 

//db connection
try {
    $conn = new PDO('mysql:host=localhost;dbname=pagination', 'root', '');
} catch ( PDOException $e) {
    echo  "Error" . $e->getMessage();
    die();
}

//get the page id
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
//number of posts per page
$postPerPage = 5;
//number of post to show from
$fromPostToShow = ($page > 1) ? ($page * $postPerPage - $postPerPage) : 0;
//make SQL query and execute
$articles = $conn->prepare("SELECT SQL_CALC_FOUND_ROWS * FROM articles
                            LIMIT  $fromPostToShow, $postPerPage"); 
$articles->execute();
//get all the set of articles to show as array
$articles = $articles->fetchall();
// print_r($articles);

//if there are not articles redirect to index
if (!$articles) {
   header('location: index.php');
}

//Calculate the total number of articles. FOUND_ROWS() works as SQL_CALC_FOUND_ROWS 
//is set on previous on query
$totalArticles = $conn->query('SELECT FOUND_ROWS() as total');
$totalArticles = $totalArticles->fetch()['total'];

//total of number of pages
$numberOfPages = ceil($totalArticles/$postPerPage); 

require 'index.view.php';