<!DOCTYPE html>
<html>
<head>
	<title>Upload file</title>
</head>
<body>

	<form class="" action="{{URL::to('/store')}}" enctype="multipart/form-data" method="post">
		
		<input type="file" name="image" value="">
		<br>
		<button type="submit" name="button">Upload Image</button>
		<input type="text" name="_token" value="{{csrf_token()}}" hidden="true">

	</form>


</body>
</html>