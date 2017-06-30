(function(module) {
	"use strict";

	var async = module.parent.require('async');
	var nconf = module.parent.require('nconf');
	var validator = module.parent.require('validator');
	var fs = require('fs');
	var path = require('path');
	var db = module.parent.require('./database');
	var categories = module.parent.require('./categories');
	var user = module.parent.require('./user');
	var plugins = module.parent.require('./plugins');
	var topics = module.parent.require('./topics');
	var posts = module.parent.require('./posts');
	var groups = module.parent.require('./groups');
	var translator = module.parent.require('../public/src/modules/translator');
	var templates = module.parent.require('templates.js');
	var websockets = module.parent.require('./socket.io');
	var settings = module.parent.require('./settings');
	var socketAdmin = module.parent.require('./socket.io/admin');
	var defaultSettings = { title: 'Recent Topics', opacity: '1.0', textShadow: 'none', enableCarousel: 1, enableCarouselPagination: 1 };
	var app;

	var Widget = {};

	Widget.init = function(params, callback) {
		app = params.app;
		const router = params.router,
					hostMiddleware = params.middleware,
					hostControllers = params.controllers;

		router.get('/admin/plugins/ccmtHP_carousel', hostMiddleware.admin.buildHeader, Widget.renderAdminPage);
		router.get('/api/admin/plugins/ccmtHP_carousel', Widget.renderAdminPage);
		callback();

		Widget.settings = new settings('ccmtHP_carousel', '1.0.0', defaultSettings);
		socketAdmin.settings.syncCcmtHP_carousel = function () {
			Widget.settings.sync();
		};

	};

	Widget.renderAdminPage = function(req,res,next){
		res.render('admin/ccmtHP_carousel', {});
	}

	Widget.addAdminNavigation = function(header, callback) {
		header.plugins.push({
			route: '/plugins/ccmtHP_carousel',
			icon: 'fa-tint',
			name: 'ccmtHP_carousel'
		});

		callback(null, header);
	};
	Widget.defineWidgets=function(widgets,callback){
		widgets = widgets.concat([
			{
			widget: 'ccmtHP_carousel',
			name: 'ccmtHP_carousel',
			description: 'a carousel widgets for homepage',
			content: 'admin/ccmtHP_carousel'
			}
		]);

		callback(null, widgets);
	}

	Widget.renderCcmtHP_carousel=function(widget,callback){
		const base='http://forum.supersu.com/topic/';
		widget.data.templateData={
			pic1:Widget.settings.get('pic1'),
			txt1:Widget.settings.get('txt1'),
			tid1:base+Widget.settings.get('tid1'),
			pic2:Widget.settings.get('pic2'),
			txt2:Widget.settings.get('txt2'),
			tid2:base+Widget.settings.get('tid2'),
			pic3:Widget.settings.get('pic3'),
			txt3:Widget.settings.get('txt3'),
			tid3:base+Widget.settings.get('tid3'),
			pic4:Widget.settings.get('pic4'),
			txt4:Widget.settings.get('txt4'),
			tid4:base+Widget.settings.get('tid4')
		}
		app.render('widgets/ccmtHP_carousel',{templatedata:widget.data.templateData},callback);
	}

	module.exports = Widget;
}(module));
