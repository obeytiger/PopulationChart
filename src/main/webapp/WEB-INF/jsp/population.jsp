<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title>中国人口结构历史数据与趋势预测(2003 - 2025)</title>
        <meta name="viewport" content="width=device-wth, initial-scale=1.0"> 
        <meta name="description" content="Animated 3D Bar Chart with CSS3" />
        <meta name="keywords" content="css3, bar chart, animation, 3d" />
        <meta name="author" content="Sergey Lukin for Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bar-chart-3d/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bar-chart-3d/css/graph.css" />
		<!--[if lt IE 9]>
			<script type="text/javascript" src="${pageContext.request.contextPath}/bar-chart-3d/js/modernizr.custom.04022.js"></script> 
			<style>.ie-note-1{display:block;} .main{display:none;}</style>
		<![endif]-->
		<!--[if IE 9]><style>.ie-note-2{display:block;}</style><![endif]-->
    </head>
    <body onload="initPage()">
        <div class="container">
<div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>


            <section class="main">
            
               				<span class="button-label">Size:</span>
                <input type="radio" name="resize-graph" id="graph-small" /><label for="graph-small">Small</label>
                <input type="radio" name="resize-graph" id="graph-normal" checked="checked" /><label for="graph-normal">Normal</label>
                <input type="radio" name="resize-graph" id="graph-large" /><label for="graph-large">Large</label>
<br>
Year:				
<select id="whichYear" onchange="chooseYear()">
<option value="2003">2003</option>
<option value="2004">2004</option>
<option value="2005">2005</option>
<option value="2006">2006</option>
<option value="2007">2007</option>
<option value="2008">2008</option>
<option value="2009">2009</option>
<option value="2010">2010</option>
<option value="2011">2011</option>
<option value="2012">2012</option>
<option value="2013">2013</option>
<option value="2014">2014</option>
<option value="2015">2015</option>
<option value="2016">2016</option>
<option value="2017">2017</option>
<option value="2018">2018</option>
<option value="2019">2019</option>
<option value="2020">2020</option>
<option value="2021">2021</option>
<option value="2022">2022</option>
<option value="2023">2023</option>
<option value="2024">2024</option>
<option value="2025">2025</option>
</select>
<input type="button" id="playBtn" value="幻灯片式播放" onclick="playYearByYear()" />
<input type="button" id="stopPlayBtn" value="停止播放" onclick="stopPlayYearByYear()" />
<br>
                <ul class="graph-container">
                    <li>
                        <span>0-4</span>
                        <div class="bar-wrapper">
                            <div class="bar-container">
                                <div class="bar-background"></div>
                                <!-- <div class="bar-inner" style="height: ${percent1}%" id="barNo1"></div> -->
                                <div class="bar-inner" id="barNo1"></div>
                                <div class="bar-foreground"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span>5-9</span>
                        <div class="bar-wrapper">
                            <div class="bar-container">
                                <div class="bar-background"></div>
                                <div class="bar-inner" id="barNo2"></div>
                                <div class="bar-foreground"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span>10-14</span>
                        <div class="bar-wrapper">
                            <div class="bar-container">
                                <div class="bar-background"></div>
                                <div class="bar-inner" id="barNo3"></div>
                                <div class="bar-foreground"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span>15-19</span>
                        <div class="bar-wrapper">
                            <div class="bar-container">
                                <div class="bar-background"></div>
                                <div class="bar-inner" id="barNo4"></div>
                                <div class="bar-foreground"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span>20-24</span>
                        <div class="bar-wrapper">
                            <div class="bar-container">
                                <div class="bar-background"></div>
                                <div class="bar-inner" id="barNo5"></div>
                                <div class="bar-foreground"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span>25-29</span>
                        <div class="bar-wrapper">
                            <div class="bar-container">
                                <div class="bar-background"></div>
                                <div class="bar-inner" id="barNo6"></div>
                                <div class="bar-foreground"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span>30-34</span>
                        <div class="bar-wrapper">
                            <div class="bar-container">
                                <div class="bar-background"></div>
                                <div class="bar-inner" id="barNo7"></div>
                                <div class="bar-foreground"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span>35-39</span>
                        <div class="bar-wrapper">
                            <div class="bar-container">
                                <div class="bar-background"></div>
                                <div class="bar-inner" id="barNo8"></div>
                                <div class="bar-foreground"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span>40-44</span>
                        <div class="bar-wrapper">
                            <div class="bar-container">
                                <div class="bar-background"></div>
                                <div class="bar-inner" id="barNo9"></div>
                                <div class="bar-foreground"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span>45-49</span>
                        <div class="bar-wrapper">
                            <div class="bar-container">
                                <div class="bar-background"></div>
                                <div class="bar-inner" id="barNo10"></div>
                                <div class="bar-foreground"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span>50-54</span>
                        <div class="bar-wrapper">
                            <div class="bar-container">
                                <div class="bar-background"></div>
                                <div class="bar-inner" id="barNo11"></div>
                                <div class="bar-foreground"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span>55-59</span>
                        <div class="bar-wrapper">
                            <div class="bar-container">
                                <div class="bar-background"></div>
                                <div class="bar-inner" id="barNo12"></div>
                                <div class="bar-foreground"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span>60-64</span>
                        <div class="bar-wrapper">
                            <div class="bar-container">
                                <div class="bar-background"></div>
                                <div class="bar-inner" id="barNo13"></div>
                                <div class="bar-foreground"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span>65-69</span>
                        <div class="bar-wrapper">
                            <div class="bar-container">
                                <div class="bar-background"></div>
                                <div class="bar-inner" id="barNo14"></div>
                                <div class="bar-foreground"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <span>70+</span>
                        <div class="bar-wrapper">
                            <div class="bar-container">
                                <div class="bar-background"></div>
                                <div class="bar-inner" id="barNo15"></div>
                                <div class="bar-foreground"></div>
                            </div>
                        </div>
                    </li>





                    <li>
                        <ul class="graph-marker-container">
                            <li style="bottom:25%;"><span>3%</span></li>
                            <li style="bottom:50%;"><span>6%</span></li>
                            <li style="bottom:75%;"><span>9%</span></li>
                            <li style="bottom:100%;"><span>12%</span></li>
                        </ul>
                    </li>
                </ul>
<br>
<br>
<br>
<label id="totalAmount">总人口:</label>

            </section>
        </div>

    </body>
    
    <script type="text/javascript">
    
    function chooseYear(){
        var  myselect=document.getElementById("whichYear");
        var myindex=myselect.selectedIndex ;
        //alert("choose year");
        
        var request = new XMLHttpRequest(); 
        request.open("POST", '${pageContext.request.contextPath}/chooseYear?theYear='+myselect.options[myindex].value, true);

	      request.onreadystatechange=function() 
	      {
	        if (request.readyState==4) 
	        {
	          if(request.status==200){
	            console.log("上传成功");
	            //alert("上传成功");
	            var arr = request.responseText.split('|');
	        	if(arr instanceof Array){
	        		document.getElementById("barNo1").style.height = arr[0] + "%";
	        		document.getElementById("barNo2").style.height = arr[1] + "%";
	        		document.getElementById("barNo3").style.height = arr[2] + "%";
	        		document.getElementById("barNo4").style.height = arr[3] + "%";
	        		document.getElementById("barNo5").style.height = arr[4] + "%";
	        		document.getElementById("barNo6").style.height = arr[5] + "%";
	        		document.getElementById("barNo7").style.height = arr[6] + "%";
	        		document.getElementById("barNo8").style.height = arr[7] + "%";
	        		document.getElementById("barNo9").style.height = arr[8] + "%";
	        		document.getElementById("barNo10").style.height = arr[9] + "%";
	        		document.getElementById("barNo11").style.height = arr[10] + "%";
	        		document.getElementById("barNo12").style.height = arr[11] + "%";
	        		document.getElementById("barNo13").style.height = arr[12] + "%";
	        		document.getElementById("barNo14").style.height = arr[13] + "%";
	        		document.getElementById("barNo15").style.height = arr[14] + "%";
	        	}
	        	
	        	var totalAmount = '${totalAmount}';
	        	var totalAmountArray = totalAmount.split('|');
	        	if(totalAmountArray instanceof Array){
	        		document.getElementById("totalAmount").innerHTML = "总人口: " +totalAmountArray[myindex];
	        	}
	        	
	            
	          }else{
	        	  
	          }
	        }
	      }
	      var formData = new FormData();
	      formData.append("myselectYear", myselect.options[myindex].value); 
	      request.send(formData);
	      
        //window.location.href="chooseYear?theYear="+myselect.options[myindex].value;
 	}
    
    function initPage(){
    	var theIndex = ${selectedIndexYear};
    	document.getElementById("whichYear")[theIndex].selected=true;
    	chooseYear();
    	/*
    	var firstVisitFlag = ${firstVisitFlag};
    	if(firstVisitFlag.indexOf("Y")!=-1){
    		//alert("first time");
    		chooseYear();
    	}
    	*/
    	
    }
    
    
	var eObject = "";
    
    function playYearByYear(){
    	
    	//document.getElementById("playBtn").disabled = true;
    	//document.getElementById("stopPlayBtn").enabled = true;
    	
    	//document.getElementById('stopPlayBtn').style.display="block"; 
    	//document.getElementById('playBtn').style.display="none";
    	
    	document.getElementById('playBtn').disabled='disabled';
    	document.getElementById('stopPlayBtn').removeAttribute("disabled");
    	
    	var firstTime = true;
    	document.getElementById("whichYear")[0].selected=true;
    	chooseYear();
    	
    	eObject = setInterval(function() {
        	//eObject = document.createEvent("MouseEvents");
        	//eObject.initEvent("click", true, true);
        	
            var  myselect=document.getElementById("whichYear");
            var myindex=myselect.selectedIndex ;
            
            if(myindex == 22){
            	stopPlayYearByYear();
            	return;
            }
        	document.getElementById("whichYear")[myindex + 1].selected=true;
        	chooseYear();
        	}, 2000);
    }
    
    function stopPlayYearByYear(){
    	
    	//document.getElementById("playBtn").enabled = true;
    	//document.getElementById("stopPlayBtn").disabled = true;
    	
    	//document.getElementById('playBtn').style.display="block"; 
    	//document.getElementById('stopPlayBtn').style.display="none";
    	
    	document.getElementById('stopPlayBtn').disabled='disabled';
    	document.getElementById('playBtn').removeAttribute("disabled");
    	
    	window.clearInterval(eObject);
    	
    }
    
    </script>
    
     	
     	
</html>