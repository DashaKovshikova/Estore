<?php require_once('config.php'); ?>


<?php $pageTitle = 'Главная страница'; 
if(@$_SESSION['login'] != 'on'){
	header('Location:index.php');
}

?>

<?php 
include('./templates/_head.php'); // include-включить, т е встраивает шаблоны в верстку

// нестрогое подключение, если файла нет, то программа будет работать дальше
// ONCE- подключи этот файл только один раз
//include('...');
//include_once('....');

//Строгое подключение , если файла нет, то будет фатальная ошибка
//require('...');
//require_once('...');
?>


<!-- white-plate -->
<div class="white-plate">
	<div class="container-fluid">
		<?php include('./templates/_header.php'); ?>
		
		<div class="line-between"></div>
		<!-- content block -->
		<div class="row">
			<?php include('./templates/_aside.php'); ?>
			<!-- Center Part -->
			<div class="col-md-9 col-lg-10">
				<div class="row">

					<?php 

						$categoryName = $_GET['category'];

						if(isset($_GET['category'])){
							$sql = "SELECT*FROM `products` WHERE category = '$categoryName' ";
						} else{
							$sql = "SELECT*FROM `products`";
						}

						
						$result = $db->query($sql);
						$products = $result -> fetchALL(PDO::FETCH_ASSOC);

						foreach( $products as $product){
							include('./templates/_product-item.php');
						};

					?>

				</div>
			</div>
			<!-- // Center Part -->
		</div>
		<!-- content block -->
	</div>
</div>
<!-- // white-plate -->
<?php include('./templates/_footer.php'); ?>
