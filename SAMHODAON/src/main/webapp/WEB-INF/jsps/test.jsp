<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Test Page</title>
        <link rel="stylesheet" href="/samhodaon/resources/summerNote/summernote-lite.css">
	    </head>
	    <body>
		
        <textarea id="summernote" name="editordata">
        
        </textarea>
		Realpath is WAS = 
		<%=request.getRealPath("/") %>
      	<br/>
      	설정된 이미지 저장 경로 = c:\summernote_image\
      	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="/samhodaon/resources/summerNote/summernote-lite.js"></script>
		<script src="/samhodaon/resources/summerNote/lang/summernote-ko-KR.js"></script>
		<script>

		$(document).ready(function() {
			//여기 아래 부분
			$('#summernote').summernote({
				  height: 300,                 // 에디터 높이
				  lang: "ko-KR",					// 한글 설정
				  callbacks: {
					  onImageUpload: function(files) {
						  uploadSummerNoteImageFile(files[0], this);
					  }
				  }
			});
		});
		
		function uploadSummerNoteImageFile(file, editor) {
			data = new FormData();
			data.append("file", file);
			$.ajax({
				data: data,
				type: "POST",
				url: "/samhodaon/uploadSummerNoteImageFile",
				enctype : 'multipart/form-data',
				contentType: false,
				processData: false,
				success: function(data) {
					console.log(data);
					setTimeout(function() {
						$(editor).summernote('insertImage', "/samhodaon/img/" + data.url);
					}, 4000);
				}
			});
		}
		</script>
    </body>
</html>