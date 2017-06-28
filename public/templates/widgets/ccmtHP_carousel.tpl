
<div class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide"><a href="{templatedata.tid1}"><img src="{templatedata.pic1}" /></a></div>
        <div class="swiper-slide"><a href="{templatedata.tid2}"><img src="{templatedata.pic2}" /></a></div>
        <div class="swiper-slide"><a href="{templatedata.tid3}"><img src="{templatedata.pic3}" /></a></div>
				<div class="swiper-slide"><a href="{templatedata.tid4}"><img src="{templatedata.pic4}" /></a></div>
    </div>
    <!-- 如果需要分页器 -->
    <div class="swiper-pagination"></div>

</div>
<script>
var width=$(window).width();
  var mySwiper = new Swiper ('.swiper-container', {
		autoplay: 5000,
    direction: 'horizontal',
		effect:'slide',
    autoplayDisableOnInteraction:false,
    loop: true,
    height:240,
    slidesPerView:width>450?3:1,
    spaceBetween:20,
    loopedSlides:4,


    // 如果需要分页器
    pagination: '.swiper-pagination',

  })
</script>
