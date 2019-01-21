function findClass(){
		var categoryId = $("#category").val()
		$.ajax({
			url:"/Wytblog/content/inserta",
			type:"get",
			timeout:"1000",
			dataType:'json',
			data:{categoryId:categoryId},
			success:function(data){
				$("#csonId option").remove();
				$("#csonId").append("<option value='0'>选择分类</option>");
				if (data != 0) {
					for ( var i = 0; i < data.length; i++) {
						var classId = data[i].csonId;
						var className = data[i].csonName;
						$("#csonId").append(
								"<option value="+classId+">"
										+ className + "</option>");
					}
				}
			},
			error : function(XMLResponse) {
				alert(XMLResponse.responseText);
			}
		});
	}