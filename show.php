<?php

if (isset($_GET['id']) && !empty($_GET['id']))
{
    echo '<a href="/" rel="nofollow">Categories</a>';
    
    require_once 'database.php';
    require_once 'models/Category.php';
    
    $dbCategory = new Category();
    
    $id = $_GET['id'];
    $category = $dbCategory->getCategoryById($id);
    
    if (!is_null($category))
    {
        echo '<div> ID : ' . $category->id . '</div>';
        echo '<h1>' . '</h1>';
        $views = $category->views + 1;
        echo '<div>Views : ' . $views . '</div>';
        echo '<p>' . $category->description . '</p>';
        $formatDate = date('d F Y', strtotime($category->created_at));
        echo '<span>Created_at : ' . $formatDate . '</span>';
        
        $dbCategory->updateCategoriViews($category->id, $views);
    }    
    else
    {
        echo '<div>Invalid Category</div>';
    }    
}
else
{
    header('location: /');
    exit;
}    

?>
