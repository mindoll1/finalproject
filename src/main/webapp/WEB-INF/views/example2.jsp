<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Directone - Free Bootstrap 5 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200;300;400;600;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">

<link rel="stylesheet" href="resources/css/animate.css">
<link rel="stylesheet" href="resources/css/flaticon.css">
<link rel="stylesheet" href="resources/css/tiny-slider.css">
<link rel="stylesheet" href="resources/css/glightbox.min.css">
<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/style.css">

<!--달력 링크 추가!! 2022.08.02 김민석  -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	$(function() {

		var dateFormat = "yy/mm/dd", from = $("#from").datepicker(
				{
					showMonthAfterYear : true, //연도,달 순서로 지정
					changeMonth : true,//달 변경 지정
					dateFormat : "yy/mm/dd",//날짜 포맷
					dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],//요일 이름 지정
					monthNamesShort : [ "1", "2", "3", "4", "5", "6", "7", "8",
							"9", "10", "11", "12" ],//월 이름 지정
					minDate : 0
				//오늘 이전 날짜를 선택할 수 없음
				}).on("change", function() {
			to.datepicker("option", "minDate", getDate(this));//종료일의 minDate 지정
		}), to = $("#to").datepicker(
				{
					showMonthAfterYear : true,
					changeMonth : true,
					dateFormat : "yy/mm/dd",
					dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
					monthNamesShort : [ "1", "2", "3", "4", "5", "6", "7", "8",
							"9", "10", "11", "12" ],
					minDate : '+1D' //내일부터 선택가능, 지정형식 예(+1D +1M +1Y)
				}).on("change", function() {
			from.datepicker("option", "maxDate", getDate(this));//시작일의 maxDate 지정
		});

		function getDate(element) {
			var date;
			try {
				date = $.datepicker.parseDate(dateFormat, element.value);
				if (element.id == 'from') {
					date.setDate(date.getDate() + 1);//종료일은 시작보다 하루 이후부터 지정할 수 있도록 설정
				} else {
					date.setDate(date.getDate() - 1);//시작일은 종료일보다 하루 전부터 지정할 수 있도록 설정
				}
			} catch (error) {
				date = null;
			}
			return date;
		}
	});
</script>
</head>
<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0">



	<nav class="navbar navbar-expand-lg  ftco-navbar-light">
		<div class="container-xl">
			<a class="navbar-brand d-flex align-items-center" href="index"> <span
				class="flaticon flaticon-compass"></span> <span class="">Directone
					<small>Directory and Listing</small>
			</span>
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="fa fa-bars"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav m-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="index">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="about">About</a></li>
					<li class="nav-item"><a class="nav-link" href="listing">Listing</a></li>
					<li class="nav-item"><a class="nav-link active" href="blog">Blog</a></li>
					<li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
				</ul>
				<p class="mb-0">
					<a href="#" class="btn btn-primary rounded"><span
						class="ion-ios-add"></span> Add Listing</a>
				</p>
			</div>
		</div>
	</nav>

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/letsfestival2.png');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 pt-5 text-center">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index">Home <i
								class="fa fa-chevron-right"></i></a></span> <span>렛페 <i
							class="fa fa-chevron-right"></i></span>
					</p>
					<h1 class="mb-0 bread">테스트용 렛페</h1>
				</div>
			</div>
		</div>
	</section>
	
	
	
	
	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row">
				<form>
				
				<!--렛페 축제명-->
				<div class="lef-name col-md-5">	
					<div class="input-group">
						<span class="input-group-text">축제명</span> 
						<input type="text"aria-label="lef name" class="form-control">
					</div><!--input-group-->
				</div><!--렛페 축제명-->

				
				
				<!--렛페 시작 마감일  -->
				<div class="lef-start-end col-sm-1" style="position: absolute; right: 649px; top: 87px;">
					<label>시작일</label> <input type="text" name="from" id="from" autocomplete="off">
					<label>종료일</label> <input type="text" name="to" id="to" autocomplete="off">
				</div><!--lef-start-end-->
					
	
				
				
				<div class="lef-large-category col-md-3"><!--렛페 대분류 -->
					
				<div class="lef-small-category col-md-6"></div><!--렛페 소분류  -->						
				
				</div><!--렛페 대분류 -->
											
							
				<div class="row g-3">
							<div class="lef-img col-md-11">
								<div class="input-group mb-3">
									<input type="file" class="form-control" id="inputGroupFile02">
									<label class="input-group-text" for="inputGroupFile02">저장</label>
								</div>
							</div>
					</div>


					<div class="row g-3">
					  <div class="col-sm-7">
					    <input type="text" class="form-control" placeholder="서울시" aria-label="City">
					  </div>
					  <div class="col-sm">
					    <input type="text" class="form-control" placeholder="용산구" aria-label="State">
					  </div>
					  <div class="col-sm">
					    <input type="text" class="form-control" placeholder="후암동" aria-label="Zip">
					  </div>
					</div>


									<div class="lef-one-info col-md-11">
										<!--한줄 소개  -->
										<div class="lef-info col-md-11">
											<!--소개  -->

										</div>
										<!--소개  -->
									</div>
									<!--한줄 소개  -->



						
				
		
			
		
				</form><!--폼태그  -->
			</div>
			<!--row-->
		</div>
		<!-- container-->
	</section>
</body>
</html>

<!-- 	<div class="specialfeatures_wrap">
		<div class="maincategory_wrap">
			<p class="title"
				style="width: 100%; padding: 15px 0 0 20px; height: 34px; box-sizing: border-box; background: rgba(20, 20, 20, 0.8); color: #fff; font-size: 12px; text-align: left;">대분류</p>
			<div class="maincategory">
				<div class="scroll_area" id="scroll01" style="touch-action: none;">
					<div class="scroller"
						style="transform: translate(0px, 0px) translateZ(0px);">
						<ul class="list">
							<li class="current"><a class="specialty" data-val="0">음악</a>
							</li>
							<li class=""><a class="specialty" data-val="1">춤</a></li>
							<li class=""><a class="specialty" data-val="2">스포츠</a></li>
							<li class=""><a class="specialty" data-val="3">언어</a></li>
							<li><a class="specialty" data-val="4">기타</a></li>
						</ul>
					</div>
					<div class="iScrollVerticalScrollbar iScrollLoneScrollbar"
						style="position: absolute; z-index: 9999; width: 7px; bottom: 2px; top: 2px; right: 1px; overflow: hidden;">
						<div class="iScrollIndicator"
							style="box-sizing: border-box; position: absolute; background: rgba(0, 0, 0, 0.5); border: 1px solid rgba(255, 255, 255, 0.9); border-radius: 3px; width: 100%; transition-duration: 0ms; display: none; height: 174px; transform: translate(0px, 0px) translateZ(0px);"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="smallclassification_wrap">

			<p class="title"
				style="width: 100%; padding: 15px 0 0 20px; height: 34px; box-sizing: border-box; background: rgba(20, 20, 20, 0.8); color: #fff; font-size: 12px; text-align: left;">소분류</p>
			<div class="smallclassification">
				<div class="scroll_area" id="scroll02" style="touch-action: none;">
					<div class="scroller"
						style="transform: translate(0px, 0px) translateZ(0px);">
						<ul class="list">
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_20" name="specialty[]" value="20">
								<label for="key_20">경상도 사투리</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_21" name="specialty[]" value="21">
								<label for="key_21">전라도 사투리</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_22" name="specialty[]" value="22">
								<label for="key_22">충청도 사투리</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_23" name="specialty[]" value="23">
								<label for="key_23">강원도 사투리</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_24" name="specialty[]" value="24">
								<label for="key_24">제주도 사투리</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_25" name="specialty[]" value="25">
								<label for="key_25">북한 사투리</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_26" name="specialty[]" value="26">
								<label for="key_26">연변 사투리</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_27" name="specialty[]" value="27"
								checked=""> <label for="key_27">영어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_28" name="specialty[]" value="28">
								<label for="key_28">중국어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_29" name="specialty[]" value="29">
								<label for="key_29">일본어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_30" name="specialty[]" value="30">
								<label for="key_30">베트남어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_31" name="specialty[]" value="31">
								<label for="key_31">러시아어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_32" name="specialty[]" value="32">
								<label for="key_32">불어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_33" name="specialty[]" value="33">
								<label for="key_33">스페인어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_34" name="specialty[]" value="34">
								<label for="key_34">포르투갈어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_35" name="specialty[]" value="35">
								<label for="key_35">이탈리아어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_36" name="specialty[]" value="36">
								<label for="key_36">아랍어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_37" name="specialty[]" value="37">
								<label for="key_37">태국어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_40" name="specialty[]" value="40">
								<label for="key_40">루마니아어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_42" name="specialty[]" value="42">
								<label for="key_42">독일어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_43" name="specialty[]" value="43">
								<label for="key_43">네덜란드어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_44" name="specialty[]" value="44">
								<label for="key_44">덴마크어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_45" name="specialty[]" value="45">
								<label for="key_45">스웨덴어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_46" name="specialty[]" value="46">
								<label for="key_46">노르웨이어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_47" name="specialty[]" value="47">
								<label for="key_47">그리스어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_48" name="specialty[]" value="48">
								<label for="key_48">페르시아어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_49" name="specialty[]" value="49">
								<label for="key_49">힌두어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_50" name="specialty[]" value="50">
								<label for="key_50">몽골어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_51" name="specialty[]" value="51">
								<label for="key_51">터키어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_52" name="specialty[]" value="52">
								<label for="key_52">헝가리어</label></li>
							<li class="key key_3" style="display: none;"><input
								type="checkbox" id="key_53" name="specialty[]" value="53">
								<label for="key_53">핀란드어</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_54" name="specialty[]" value="54"> <label
								for="key_54">성악</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_55" name="specialty[]" value="55"> <label
								for="key_55">알앤비</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_56" name="specialty[]" value="56"> <label
								for="key_56">락</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_57" name="specialty[]" value="57"> <label
								for="key_57">발라드</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_58" name="specialty[]" value="58"> <label
								for="key_58">랩</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_59" name="specialty[]" value="59"> <label
								for="key_59">뮤지컬</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_67" name="specialty[]" value="67"> <label
								for="key_67">피아노</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_68" name="specialty[]" value="68"> <label
								for="key_68">바이올린</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_69" name="specialty[]" value="69"> <label
								for="key_69">플루트</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_70" name="specialty[]" value="70"> <label
								for="key_70">첼로</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_71" name="specialty[]" value="71"> <label
								for="key_71">우쿨렐레</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_72" name="specialty[]" value="72"> <label
								for="key_72">일렉기타</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_73" name="specialty[]" value="73"> <label
								for="key_73">베이스</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_74" name="specialty[]" value="74"> <label
								for="key_74">통기타</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_75" name="specialty[]" value="75"> <label
								for="key_75">트럼펫</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_76" name="specialty[]" value="76"> <label
								for="key_76">트럼본</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_77" name="specialty[]" value="77"> <label
								for="key_77">색소폰</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_78" name="specialty[]" value="78"> <label
								for="key_78">튜바</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_79" name="specialty[]" value="79"> <label
								for="key_79">클라리넷</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_80" name="specialty[]" value="80"> <label
								for="key_80">하모니카</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_81" name="specialty[]" value="81"> <label
								for="key_81">디제잉</label></li>
							<li class="key key_0" style=""><input type="checkbox"
								id="key_82" name="specialty[]" value="82"> <label
								for="key_82">아코디언</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_83" name="specialty[]" value="83">
								<label for="key_83">축구</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_84" name="specialty[]" value="84">
								<label for="key_84">탁구</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_85" name="specialty[]" value="85">
								<label for="key_85">당구</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_86" name="specialty[]" value="86">
								<label for="key_86">볼링</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_87" name="specialty[]" value="87">
								<label for="key_87">테니스</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_88" name="specialty[]" value="88">
								<label for="key_88">배드민턴</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_89" name="specialty[]" value="89">
								<label for="key_89">골프</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_90" name="specialty[]" value="90">
								<label for="key_90">스쿼시</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_91" name="specialty[]" value="91">
								<label for="key_91">야구</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_92" name="specialty[]" value="92"
								checked=""> <label for="key_92">농구</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_93" name="specialty[]" value="93">
								<label for="key_93">족구</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_94" name="specialty[]" value="94">
								<label for="key_94">럭비</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_95" name="specialty[]" value="95">
								<label for="key_95">배구</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_96" name="specialty[]" value="96">
								<label for="key_96">사격</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_97" name="specialty[]" value="97">
								<label for="key_97">양궁</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_98" name="specialty[]" value="98">
								<label for="key_98">주짓수</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_99" name="specialty[]" value="99">
								<label for="key_99">킥복싱</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_100" name="specialty[]" value="100">
								<label for="key_100">쿵푸</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_101" name="specialty[]" value="101">
								<label for="key_101">합기도</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_102" name="specialty[]" value="102">
								<label for="key_102">태권도</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_103" name="specialty[]" value="103">
								<label for="key_103">특공무술</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_104" name="specialty[]" value="104">
								<label for="key_104">권투</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_105" name="specialty[]" value="105">
								<label for="key_105">검도</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_106" name="specialty[]" value="106">
								<label for="key_106">레슬링</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_107" name="specialty[]" value="107">
								<label for="key_107">유도</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_108" name="specialty[]" value="108">
								<label for="key_108">이종격투기</label></li>
							<li class="key key_1" style="display: none;"><input
								type="checkbox" id="key_109" name="specialty[]" value="109">
								<label for="key_109">에어로빅</label></li>
							<li class="key key_1" style="display: none;"><input
								type="checkbox" id="key_110" name="specialty[]" value="110">
								<label for="key_110">리듬체조</label></li>
							<li class="key key_1" style="display: none;"><input
								type="checkbox" id="key_111" name="specialty[]" value="111">
								<label for="key_111">요가</label></li>
							<li class="key key_1" style="display: none;"><input
								type="checkbox" id="key_112" name="specialty[]" value="112">
								<label for="key_112">필라테스</label></li>
							<li class="key key_1" style="display: none;"><input
								type="checkbox" id="key_113" name="specialty[]" value="113">
								<label for="key_113">벨리댄스</label></li>
							<li class="key key_1" style="display: none;"><input
								type="checkbox" id="key_114" name="specialty[]" value="114">
								<label for="key_114">플라멩코</label></li>
							<li class="key key_1" style="display: none;"><input
								type="checkbox" id="key_115" name="specialty[]" value="115">
								<label for="key_115">폴카</label></li>
							<li class="key key_1" style="display: none;"><input
								type="checkbox" id="key_116" name="specialty[]" value="116">
								<label for="key_116">발레</label></li>
							<li class="key key_1" style="display: none;"><input
								type="checkbox" id="key_117" name="specialty[]" value="117">
								<label for="key_117">라틴댄스</label></li>
							<li class="key key_1" style="display: none;"><input
								type="checkbox" id="key_118" name="specialty[]" value="118">
								<label for="key_118">현대무용</label></li>
							<li class="key key_1" style="display: none;"><input
								type="checkbox" id="key_119" name="specialty[]" value="119">
								<label for="key_119">재즈댄스</label></li>
							<li class="key key_1" style="display: none;"><input
								type="checkbox" id="key_120" name="specialty[]" value="120">
								<label for="key_120">스트릿댄스</label></li>
							<li class="key key_1" style="display: none;"><input
								type="checkbox" id="key_121" name="specialty[]" value="121">
								<label for="key_121">탭댄스</label></li>
							<li class="key key_1" style="display: none;"><input
								type="checkbox" id="key_122" name="specialty[]" value="122">
								<label for="key_122">비보잉</label></li>
							<li class="key key_4" style="display: none;"><input
								type="checkbox" id="key_123" name="specialty[]" value="123">
								<label for="key_123">요리</label></li>
							<li class="key key_4" style="display: none;"><input
								type="checkbox" id="key_124" name="specialty[]" value="124">
								<label for="key_124">바텐더</label></li>
							<li class="key key_4" style="display: none;"><input
								type="checkbox" id="key_125" name="specialty[]" value="125">
								<label for="key_125">마술</label></li>
							<li class="key key_4" style="display: none;"><input
								type="checkbox" id="key_126" name="specialty[]" value="126">
								<label for="key_126">수화</label></li>
							<li class="key key_4" style="display: none;"><input
								type="checkbox" id="key_127" name="specialty[]" value="127">
								<label for="key_127">마임</label></li>
							<li class="key key_4" style="display: none;"><input
								type="checkbox" id="key_128" name="specialty[]" value="128">
								<label for="key_128">오토바이 면허</label></li>
							<li class="key key_4" style="display: none;"><input
								type="checkbox" id="key_129" name="specialty[]" value="129">
								<label for="key_129">1종보통 면허</label></li>
							<li class="key key_4" style="display: none;"><input
								type="checkbox" id="key_130" name="specialty[]" value="130">
								<label for="key_130">1종대형 면허</label></li>
							<li class="key key_4" style="display: none;"><input
								type="checkbox" id="key_131" name="specialty[]" value="131">
								<label for="key_131">1종특수 면허</label></li>
							<li class="key key_4" style="display: none;"><input
								type="checkbox" id="key_132" name="specialty[]" value="132">
								<label for="key_132">2종보통 면허</label></li>
							<li class="key key_2" style="display: none;"><input
								type="checkbox" id="key_133" name="specialty[]" value="133">
								<label for="key_133">승마</label></li>
						</ul>
					</div>
					<div class="iScrollVerticalScrollbar iScrollLoneScrollbar"
						style="position: absolute; z-index: 9999; width: 7px; bottom: 2px; top: 2px; right: 1px; overflow: hidden;">
						<div class="iScrollIndicator"
							style="box-sizing: border-box; position: absolute; background: rgba(0, 0, 0, 0.5); border: 1px solid rgba(255, 255, 255, 0.9); border-radius: 3px; width: 100%; transition-duration: 0ms; display: block; height: 32px; transform: translate(0px, 0px) translateZ(0px);"></div>
					</div>
				</div>
			</div>
		</div>
	</div> -->