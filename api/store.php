<?php
require 'connect.php';

// Get the posted data.
$postdata = file_get_contents("php://input");

if(isset($postdata) && !empty($postdata))
{
  // Extract the data.
  $request = json_decode($postdata);
	

  // Validate.
  if(trim($request->data->model) === '' || (int)$request->data->price < 1)
  {
    return http_response_code(400);
  }
	
  // Sanitize.
  $brand_id = mysqli_real_escape_string($con, (int)$request->data->brand_id);
  $model = mysqli_real_escape_string($con, trim($request->data->model));
  $price = mysqli_real_escape_string($con, (int)$request->data->price);
    

  // Store.
  $sql = "INSERT INTO `cars`(`id`,`brand_id`,`model`,`price`) VALUES (null,'{$brand_id}','{$model}','{$price}')";

  if(mysqli_query($con,$sql))
  {
    http_response_code(201);
    $car = [
      'brand_id' => $brand_id,
      'model' => $model,
      'price' => $price,
      'id'    => mysqli_insert_id($con)
    ];
    echo json_encode(['data'=>$car]);
  }
  else
  {
    http_response_code(422);
  }
}
