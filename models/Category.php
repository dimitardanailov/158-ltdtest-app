<?php
class Category extends Database 
{
    public function __construct() 
    {
        $this->object_of = "Category";
        $this->table = "categories";
        parent::__construct();
    }
    
    public function getAllCategories()
    {
        $this->select();
        $categories = $this->prepare();
        
        return $categories;
    }
    
    public function getCategoryById($id)
    {
        $this->select();
        $this->where('id = ?');
        $this->limit(1);
        $category = $this->prepare(array($id));
        
        if (!empty($category))
        {
            return $category[0];
        }    
        else
        {
            return null;
        }    
    }
    
    public function updateCategoriViews($id, $views)
    {
        $this->where('id = ?');
        $this->update(array('views' => $views), array($id));
    }        
}
?>