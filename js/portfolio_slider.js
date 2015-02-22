$(function(){
$("#elastic_grid_demo").elastic_grid({	
	'hoverDirection': true,
	'hoverDelay': 0,
	'hoverInverse': false,
	'expandingSpeed': 500,
	'expandingHeight': 500,
	'items' :
		[
			{
			'title' : 'Home',
			'description'   : 'When everything comes under one roof!',
			'thumbnail' : ['img/doc_gallery/small/home.jpg'],
			'large' : ['img/doc_gallery/large/home_icon.jpg'],
			'button_list'   :
			[
			{ 'title':'Link', 'url' : 'index.html' },
			{ 'title':'Github', 'url':'https://github.com/eXpOSNitc/eXpOSNitc.github.io'}
			],
			'tags'  : ['All']
			},
			
			{
			'title' : 'Gallery 1',
			'description'   : 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
			'thumbnail' : ['img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg'],
			'large' : ['img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg'],
			'button_list'   :
			[
			{ 'title':'Demo', 'url' : 'http://#' },
			{ 'title':'Download', 'url':'http://#'}
			],
			'tags'  : ['All', 'Architecture']
			},

			{
			'title' : 'Specification',
			'description'   : 'eXpOS has a very simple specification that allows a junior undergraduate computer science student to implement it in a few months, subject to availability of adequate hardware and programming platform support.This specification is prepared from the perspective of the user/application programmer and is not hardware specific.',
			'thumbnail' : ['img/doc_gallery/small/os-spec.jpg', 'img/doc_gallery/small/os-spec-overview.jpg', 'img/doc_gallery/small/os-spec-abstractions.jpg', 'img/doc_gallery/small/os-spec-eXpFS.jpg', 'img/doc_gallery/small/os-spec-process.jpg', 'img/doc_gallery/small/os-spec-synchronization.jpg', 'img/doc_gallery/small/os-spec-misc.jpg','img/doc_gallery/small/1.jpg'],
			'large' : ['img/doc_gallery/large/os-spec.png', 'img/doc_gallery/large/os-spec-overview.png', 'img/doc_gallery/large/os-spec-abstractions.png', 'img/doc_gallery/large/os-spec-eXpFS.png','img/doc_gallery/large/os-spec-process.png', 'img/doc_gallery/large/os-spec-synchronization.png','img/doc_gallery/large/os-spec-misc.png', 'img/doc_gallery/large/1.jpg'],
			'button_list'   :
			[
			{ 'title':'Read Online', 'url' : 'os_spec.html' },
			{ 'title':'Download', 'url':'text-files/The-Experimental-Operating-System-spec.pdf'}
			],
			'tags'  : ['OS','All']
			},

			{
			'title' : 'Design',
			'description'   : 'The Design consists of 2 parts - Data Structures used by the OS and Algorithms for Interuppts and bootstrap loader. It is for people who want to implement the eXpOS and is architecture independent.',
			'thumbnail' : ['img/doc_gallery/small/os-design.jpg','img/doc_gallery/small/os-design-ds.jpg', 'img/doc_gallery/small/os-design-algo.jpg'],
			'large' : ['img/doc_gallery/large/1.jpg','img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg'],
			'button_list'   :
			[
			{ 'title':'Read Online', 'url' : 'os_design.html' },
			{ 'title':'Download', 'url':'text-files/The-Experimental-Operating-System-design.pdf'}
			],
			'tags'  : ['OS', 'All']
			},

			{
			'title' : 'Application Architecture Interface',
			'description'   : 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
			'thumbnail' : ['img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg'],
			'large' : ['img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg'],
			'button_list'   :
			[
			{ 'title':'Demo', 'url' : 'http://#' },
			{ 'title':'Download', 'url':'http://#'}
			],
			'tags'  : ['OS','All']
			},

			{
			'title' : 'Implementation',
			'description'   : 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
			'thumbnail' : ['img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg'],
			'large' : ['img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg'],
			'button_list'   :
			[
			{ 'title':'Demo', 'url' : 'http://#' },
			{ 'title':'Download', 'url':'http://#'}
			],
			'tags'  : ['OS','All']
			},

			{
			'title' : 'Spinach winter purslane',
			'description'   : 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
			'thumbnail' : ['img/doc_gallery/small/1.jpg','img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg'],
			'large' : ['img/doc_gallery/large/1.jpg','img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg'],
			'button_list'   :
			[
			{ 'title':'Demo', 'url' : 'http://#' },
			{ 'title':'Download', 'url':'http://#'}
			],
			'tags'  : ['XFS Interface', 'All']
			},

			{
			'title' : 'Spinach winter purslane',
			'description'   : 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
			'thumbnail' : ['img/doc_gallery/small/1.jpg','img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg'],
			'large' : ['img/doc_gallery/large/1.jpg','img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg'],
			'button_list'   :
			[
			{ 'title':'Demo', 'url' : 'http://#' },
			{ 'title':'Download', 'url':'http://#'}
			],
			'tags'  : ['XFS Interface', 'All']
			},

			{
			'title' : 'Application Programmers Language',
			'description'   : 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
			'thumbnail' : ['img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg'],
			'large' : ['img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg'],
			'button_list'   :
			[
			{ 'title':'Demo', 'url' : 'http://#' },
			{ 'title':'Download', 'url':'http://#'}
			],
			'tags'  : ['Programming Tools', 'All']
			},

			{
			'title' : 'System Programmers Language',
			'description'   : 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
			'thumbnail' : ['img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/2.jpg'],
			'large' : ['img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/2.jpg'],
			'button_list'   :
			[
			{ 'title':'Demo', 'url' : 'http://#' },
			{ 'title':'Download', 'url':'http://#'}
			],
			'tags'  : ['Programming Tools', 'All']
			},

			{
			'title' : 'Winter purslane',
			'description'   : 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
			'thumbnail' : ['img/doc_gallery/small/1.jpg','img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg'],
			'large' : ['img/doc_gallery/large/1.jpg','img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg'],
			'button_list'   :
			[
			{ 'title':'Demo', 'url' : 'http://#' },
			{ 'title':'Download', 'url':'http://#'}
			],
			'tags'  : ['All', 'Architecture']
			},

			{
			'title' : 'Spinach winter purslane',
			'description'   : 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
			'thumbnail' : ['img/doc_gallery/small/1.jpg','img/doc_gallery/small/5.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg'],
			'large' : ['img/doc_gallery/large/1.jpg','img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg'],
			'button_list'   :
			[
			{ 'title':'Demo', 'url' : 'http://#' },
			{ 'title':'Download', 'url':'http://#'}
			],
			'tags'  : ['All', 'Architecture']
			},

			{
			'title' : 'Spinach winter purslane',
			'description'   : 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
			'thumbnail' : ['img/doc_gallery/small/1.jpg','img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg'],
			'large' : ['img/doc_gallery/large/1.jpg','img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg'],
			'button_list'   :
			[
			{ 'title':'Demo', 'url' : 'http://#' },
			{ 'title':'Download', 'url':'http://#'}
			],
			'tags'  : ['Architecture', 'All']
			},

			{
			'title' : 'Azuki bean',
			'description'   : 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
			'thumbnail' : ['img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg'],
			'large' : ['img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg'],
			'button_list'   :
			[
			{ 'title':'Demo', 'url' : 'http://#' },
			{ 'title':'Download', 'url':'http://#'}
			],
			'tags'  : ['All', 'Architecture']
			},

			{
			'title' : 'Swiss chard pumpkin',
			'description'   : 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
			'thumbnail' : ['img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/1.jpg', 'img/doc_gallery/small/2.jpg'],
			'large' : ['img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/1.jpg', 'img/doc_gallery/large/2.jpg'],
			'button_list'   :
			[
			{ 'title':'Demo', 'url' : 'http://#' },
			{ 'title':'Download', 'url':'http://#'}
			],
			'tags'  : ['All', 'Architecture']
			},


	 
		]
	});
});
