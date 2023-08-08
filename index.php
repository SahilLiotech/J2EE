<?php
require('db.php');

$sql = "SELECT * FROM car LIMIT 8";
$sql1 = "SELECT * FROM bike LIMIT 8";
$sql2 = "SELECT * FROM scooter LIMIT 8";
$sql3 = "SELECT * FROM ev LIMIT 8";
$car_card = $conn->query($sql);
$bike_card = $conn->query($sql1);
$scooter_card = $conn->query($sql2);
$ev_card = $conn->query($sql3);
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>AutoMob</title>
  <link rel="stylesheet" href="CSS/style.css" />
  <link rel="stylesheet" href="CSS/login.css" />
  <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css">
</head>

<body>
  <?php
  include('header.php');
  ?>


  <!--------------------------- Main Container ---------------------------->

  <div class="container-xxl main-div p-0">

    <!---------------------- Hero Section --------------------------------->

    <div class="row gx-4 hero align-items-center">
      <div class="col-12 col-md-7">
        <h1 class="hero-heading">Embrace the future of driving.</h1>
        <p class="hero-description">
          The Tata Nexon combines cutting-edge technology and innovative
          design, offering a thrilling driving experience that represents the
          future of automotive excellence.
        </p>
        <a href="#" class="hero-btn">Know More &rarr;</a>
      </div>
      <div class="col-12 col-md-5">
        <img src="imgs/TataNexon.png" alt="Image Of Tata Nexon" class="img-fluid hero-img" />
      </div>
    </div>

    <!---------------------------- Find Section ------------------------------>

    <section class="section-find d-none d-sm-block">
      <h2 class="find-heading">What are you looking for?</h2>
      <div class="container-xxl">
        <div class="row find-container">
          <div class="col col-sm-5 col-lg find-col">
            <div class="find-card">
              <div class="find-card-img"><img src="imgs/car.png" alt="" /></div>
              <p class="find-img-name">Cars</p>
            </div>
          </div>
          <div class="col col-sm-5 col-lg find-col">
            <div class="find-card">
              <div class="find-card-img">
                <img src="imgs/bike.png" alt="" />
              </div>
              <p class="find-img-name">Bikes</p>
            </div>
          </div>
          <div class="col col-sm-5 col-lg find-col">
            <div class="find-card">
              <div class="find-card-img">
                <img src="imgs/scooter.png" alt="" />
              </div>
              <p class="find-img-name">Scooters</p>
            </div>
          </div>
          <div class="col col-sm-5 col-lg find-col">
            <div class="find-card">
              <div class="find-card-img"><img src="imgs/ev.png" alt="" /></div>
              <p class="find-img-name">Electric vehicles</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!----------------------------- Car Card Section ------------------------------>
    <section class="section-card">
      <h2 class="card-heading">Latest cars in india</h2>
      <div class="container-xxl mt-5">
        <div class="row card-container justify-content-around">
          <?php
          while ($row = mysqli_fetch_assoc($car_card)) {
          ?>
            <div class="col-12 col-sm-5 col-lg-4 col-xl-3 indexcard">
              <div class="card">
                <img src="<?php echo $row["car_img"] ?>" class="card-img-top EV-1" alt="" />
                <div class="card-body">
                  <h5 class="vehical-name"><?php echo $row["car_name"] ?> </h5>
                  <p class="vehical-type"><?php echo $row["car_type"] ?></p>
                  <p class="vehical-price">&#8377;<?php echo $row["car_price"] ?> <span>OnWard</span></p>
                  <a href="#" class="btn detail-btn">View More</a>
                </div>
              </div>
            </div>
          <?php
          }
          ?>
        </div>
      </div>
    </section>

    <!----------------------------------------- End Of Main Container --------------------------------------------------->
  </div>
  <?php
  include('footer.php');
  ?>
  <script src="JS/code.jquery.com_jquery-3.7.0.min.js"></script>
  <script src="Bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>