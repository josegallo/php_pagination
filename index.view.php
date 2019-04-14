<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Pagination</title>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link href='https://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
	<link rel = "stylesheet" href = "style.css">
</head>
<body>
	<div class = "container">
        <h1>Articles</h1>
        <section class = 'articles'>
            <ul>
                <?php foreach ($articles as $article) : ?>
                <li><?php echo $article['id']. '.- ' . $article['article']; ?> </li>
                <?php endforeach; ?>
            </ul>
        </section>
        <section class = 'pagination'>
            <ul>
                <!-- Deactivate backwards button -->
                <?php if ($page == 1): ?>
                    <li class = 'disabled'> &laquo;</li>
                <?php else: ?>   
                    <li> <a href ="?page=<?php echo $page - 1?>">&laquo;</a></li> 
                <?php endif ?>
                <!-- Show the pages, and active the active page -->
                <?php 
                for ($i=1; $i <= $numberOfPages; $i++) { 
                    if ($page == $i) {
                        echo "<li class = 'active'> <a href=?page=$i> $i</a> </li>";
                    } else {
                        echo "<li> <a href=?page=$i> $i</a> </li>";
                    }    
                }
                ?>
                <!-- Deactivate fordwards button -->
                <?php if ($page == $numberOfPages): ?>
                    <li class = 'disabled'> &raquo;</li>
                <?php else: ?>   
                    <li> <a href ="?page=<?php echo $page + 1?>">&raquo;</a></li> 
                <?php endif ?>
            </ul>
        </section>
	</div>


</body>
</html>

