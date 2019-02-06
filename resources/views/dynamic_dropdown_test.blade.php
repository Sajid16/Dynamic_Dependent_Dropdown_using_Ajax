<!Doctype html>
<html>
<head>
	<title>dropdown practice with ajax</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
			<div class="container box">
				<h3 align="center">Ajax Dynamic Dependent Dropdown in Laravel</h3>
				<br>
				<div class="form-group">
					<select name="country" id="country" class="form-control input-lg dynamic" data-dependent="state">
						<option value="">Select Country</option>
						@foreach($country_list as $country)
						<option value="{{$country->country}}">{{$country->country}}</option>
						@endforeach
					</select>
				</div>

				<br>
				<div class="form-group">
					<select name="country" id="state" class="form-control input-lg dynamic" data-dependent="city">
						<option value="">Select state</option>
					</select>
				</div>

				<br>
				<div class="form-group">
					<select name="country" id="city" class="form-control input-lg">
						<option value="">Select city</option>
					</select>
				</div>
				{{csrf_field()}}
			</div>



	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

	<script>
		
		$(document).ready(function(){

			$('.dynamic').change(function(){

				if($(this).val() != '')
				{
					var select = $(this).attr("id");
					var value = $(this).val();
					var dependent = $(this).data('dependent');
					var _token = $('input[name="_token"]').val();

					$.ajax({

						url:"{{route('dynamicdependent.fetch')}}",method:"POST",
						data:{select:select, value:value,_token:_token, dependent:dependent},
						success:function(result)
						{
							$('#'+dependent).html(result);
						}

					})
				}

			});

		});

	</script>

</body>
</html>