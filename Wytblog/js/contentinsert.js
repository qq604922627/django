
			function insertcontent(){
				var pathName=window.document.location.pathname;
				var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);
				$.ajax({
					type:"post",
					datatype:"json",
					async:false,
					url:projectName+"/content/insertcontent",
					data:$("#fc").serializeArray(),
					contentType:"application/x-www-form-urlencoded",
					success:function(data){								
								alert(data);	
																
					},
				error : function(XMLResponse) {
					alert(XMLResponse.responseText);
				}
				})
		}		
