<?php require_once('config.php'); ?>

<?php $pageTitle = 'Описание товара'; ?>



<?php include('./templates/_head.php'); ?>
<!-- white-plate -->
<div class="white-plate">
    <div class="container-fluid">
        <?php include('./templates/_header.php'); ?>
        
        <div class="line-between"></div>
        <!-- content block -->
        <div class="row">
            
            
            <?php include('./templates/_aside.php'); ?>
           
            
            <!-- Center Part -->
            <div class="col-md-9">

                <?php

                //print_r($_GET) $_GET -это глобальный запрос берет адресс из URL и выдает его productId

                //print_r($_GET);
                $currentProductId = intval($_GET['productId_']);
                $sql = "SELECT * FROM products WHERE  id = '$currentProductId'";
                $result = $db->query($sql);
                $product = $result -> fetch(PDO::FETCH_ASSOC);
                ?>

                <div class="product-title">
                    <?php echo $product['title']; ?>
                </div>

                <div class="row">
                    <div class="col-6">
                        <img src="img/products/<?php echo $product['img']; ?>" alt="" />
                    </div>
                    <div class="col-6">
                        <div class="product-price"><?php echo $product['price']; ?></div>
                        <a href="order.php?id=<?php echo $product['id']; ?>" class="product-btn-order">Сделать заказ</a>
                        <div class="product-desc">
                            <p><?php echo $product['desciption']; ?></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- // Center Part -->
        </div>
        <!-- content block -->
    </div>
</div>
<!-- // white-plate -->

<?php include('./templates/_footer.php'); ?>