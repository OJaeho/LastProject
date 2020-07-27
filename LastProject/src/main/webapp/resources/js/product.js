//sub cart
$(function() {
	
	var tc = new Array();
	$('#addProduct').click(function() {
		
		var html = ''; 
		tc.push({
			option : $("#size option:selected").attr("value2"),
			count : $('#numm').val(),
			total : $('#numm').val() * $("#size option:selected").val()
		})
		
		var paytotal = 0;
		for (key in tc) {
				html += '<tr>';
				html += '<td class="listedName">' + tc[key].option + '</td>';
				html += '<td>' + tc[key].count + '</td>';
				html += '<td>' + tc[key].total + '</td>';
				paytotal += tc[key].total;
				$("#paytotal").val(paytotal);
				html += '</tr>';
				$("#dynamicTbody").empty();
				$("#dynamicTbody").append(html);
		}
		
}) 
})