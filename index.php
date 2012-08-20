<?php 
    require_once 'database.php';
    require_once 'models/Category.php';
    
    $dbCategory = new Category();
    $categories = $dbCategory->getAllCategories();
    
    foreach ($categories as $category)
    {
        echo '<div>Id : ' . $category->id . '</div>';
        echo '<h2>' . $category->name . '</h2>';
        echo '<p>' . $category->description . '</p>';
        echo '<div><a href="show.php?id=' . $category->id . '" rel="nofollow">More</a>';
        echo '<hr/>';
    }    
?>
