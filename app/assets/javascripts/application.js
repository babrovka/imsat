// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

//= require ckeditor/ckeditor
//= require ckeditor/init




		// Слайдер
		$(function() {
			$("#slider ul").carouFredSel({
	    		circular: true,
	    		infinite: false,
	    		auto 	: {
					pauseDuration:5000
				},
	    		scroll  : {
	        		items   : 1
	    		},
	    	
	    		pagination  : {
	    	
	        		container : "#paging"	
	        	}
			});
		});
		// Слайдер
		
		
			// Актив	
			$(function(){
			function stripTrailingSlash(str) {
			if(str.substr(-1) == '/') {
			    return str.substr(0, str.length - 1);
			}
			return str;
			 }

			 var url = window.location.pathname;  
			var activePage = stripTrailingSlash(url);

			 $('.lefttext a').each(function(){  
			var currentPage = stripTrailingSlash($(this).attr('href'));

			if (activePage == currentPage) {
			$(this).parent().addClass('active'); 
			} 
			});
			})
		
		//  Актив
		
		// поиск
		  (function() {
		    var cx = '013515421039703036040:utivrm-ynkm';
		    var gcse = document.createElement('script'); gcse.type = 'text/javascript'; gcse.async = true;
		    gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
		        '//www.google.com/cse/cse.js?cx=' + cx;
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(gcse, s);
		  })();
			//  Поиск
		
		