<div class="row">
  <div class="col-lg-9">
		<div class="panel panel-default">
			<div class="panel-heading">ccmtHP_carousel settings</div>
			<div class="panel-body">
				<form role="form" id="ccmtHP_carousel">
					<div class="form-group">
						<label for="opacity">pic1</label>
						<input type="text" id="pic1" data-key="pic1" title="pic1" class="form-control" placeholder="">
					</div>
          <div class="form-group">
						<label for="opacity">txt1</label>
						<input type="text" id="txt1" data-key="txt1" title="txt1" class="form-control" placeholder="">
					</div>
          <div class="form-group">
						<label for="opacity">tid1</label>
						<input type="text" id="tid1" data-key="tid1" title="tid1" class="form-control" placeholder="">
					</div>

          <div class="form-group">
						<label for="opacity">pic2</label>
						<input type="text" id="pic2" data-key="pic2" title="pic2" class="form-control" placeholder="">
					</div>
          <div class="form-group">
						<label for="opacity">txt2</label>
						<input type="text" id="txt2" data-key="txt2" title="txt2" class="form-control" placeholder="">
					</div>
          <div class="form-group">
						<label for="opacity">tid2</label>
						<input type="text" id="tid2" data-key="tid2" title="tid2" class="form-control" placeholder="">
					</div>

          <div class="form-group">
						<label for="opacity">pic3</label>
						<input type="text" id="pic3" data-key="pic3" title="pic3" class="form-control" placeholder="">
					</div>
          <div class="form-group">
						<label for="opacity">txt3</label>
						<input type="text" id="txt3" data-key="txt3" title="txt3" class="form-control" placeholder="">
					</div>
          <div class="form-group">
						<label for="opacity">tid3</label>
						<input type="text" id="tid3" data-key="tid3" title="tid3" class="form-control" placeholder="">
					</div>

          <div class="form-group">
						<label for="opacity">pic4</label>
						<input type="text" id="pic4" data-key="pic4" title="pic4" class="form-control" placeholder="">
					</div>
          <div class="form-group">
						<label for="opacity">txt4</label>
						<input type="text" id="txt4" data-key="txt4" title="txt4" class="form-control" placeholder="">
					</div>
          <div class="form-group">
						<label for="opacity">tid4</label>
						<input type="text" id="tid4" data-key="tid4" title="tid4" class="form-control" placeholder="">
					</div>
				</form>
			</div>
		</div>
	</div>
  <div class="col-lg-3">
    <div class="panel panel-default">
      <div class="panel-heading">Control Panel</div>
      <div class="panel-body">
        <button class="btn btn-primary" id="save">Save Settings</button>
      </div>
    </div>
  </div>
</div>

<script>
require(['settings'], function(settings) {

	settings.sync('ccmtHP_carousel', $('#ccmtHP_carousel'));

	$('#save').click( function (event) {
		settings.persist('ccmtHP_carousel', $('#ccmtHP_carousel'), function(){
			socket.emit('admin.settings.syncCcmtHP_carousel');
			app.alertSuccess('Please restart your forum for changes to fully take effect.');
		});
    // socket.emit('admin.settings.syncCcmtHP_carousel');
	});
});
</script>
