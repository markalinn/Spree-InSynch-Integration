SpreeInsynchIntegration
=======================

Spree integration with default tables provided by ROI's team when setting up MAS integration with their InSynch module ( http://www.roi-consulting.com/proinsynch.htm ).

Developed and currently only tested with Spree 0.60.1.  Mainly just allows selection of SKU currently.  Still need to do all the order processing pieces.

Installation
============

Add the following to your Gemspec file:

	gem "spree_insynch_integration", :git => 'git://github.com/markalinn/Spree-InSynch-Integration.git'
	
You will want to speccify a branch in the gem line above if utilizing older versions of Spree.

Todo
====

Everything Else
Test


Copyright (c) 2011 Mark Linn, released under the New BSD License
