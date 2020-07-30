//sub cart
$(function() {

	var tc = new Array();
	$('#addProduct')
			.click(
					function() {
						var html = '';
						tc.push({
							option : $("#size option:selected").attr("value2"),
							count : $('#numm').val(),
							total : $('#numm').val()* $("#size option:selected").val(),
							receive : $('input[name="chk_info"]:checked').val()
						})

						var paytotal = 0;
						for (key in tc) {
							html += '<tr>';
							html += '<td class="listedName">' + tc[key].option
									+ '</td>';
							html += '<td>' + tc[key].count + '</td>';
							html += '<td>' + tc[key].total + '</td>';
							html += '<td>' + tc[key].receive + '</td>';
							paytotal += tc[key].total;
							html += '<td><button class="btn_delete"  onclick="deleteLine(this);">삭제</button></td>';

							$("#paytotal").val(paytotal);
							html += '</tr><br/>';
							$("#dynamicTbody").empty();
							$("#dynamicTbody").append(html);
						}
					})

	function deleteLine(obj) {
		var tr = $(obj).parent().parent();
		paytotal -= tr.nth-child(3).val();
		$("#paytotal").val(paytotal);
		tr.remove();
	}

	var eventTarget = document.getElementsByClassName('btn_delete')
	for (var i = 0; i < eventTarget.length; i++) {
		eventTarget[i].addEventListener('click', function() {
			alert('ddd');
			var parent = document.querySelector('#dynamicTbody')
			parent.remove(this.parentElement.parentElement)
			i--
		})
	}

})