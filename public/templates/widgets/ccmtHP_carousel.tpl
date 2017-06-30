
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
		autoplay: width>450?0:5000,
    direction: 'horizontal',
		effect:'slide',
    autoplayDisableOnInteraction:false,
    loop: width>450?false:true,
    slidesPerView:width>450?4:1,
    spaceBetween:20,
    paginationHide :width>450?true:false,

    pagination: width>450?null:'.swiper-pagination'

  })
</script>
