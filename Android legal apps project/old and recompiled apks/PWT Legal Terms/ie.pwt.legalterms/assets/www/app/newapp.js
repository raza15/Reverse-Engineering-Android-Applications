Ext.setup({
	icon: 'icon.png',
    tabletStartupScreen: 'tablet_startup.png',
    phoneStartupScreen: 'phone_startup.png',
    glossOnIcon: false,
  });

LegalTerms = new Ext.Application({
    name: "LegalTerms",

    launch: function() {

       LegalTerms.mainToolbar = new Ext.Toolbar({

			title:'Legal Terms',
            items: [
							
						
							{ text: '', iconMask: true, iconCls: 'home', 
					    		handler: function(){
									
									LegalTerms.Viewport.setActiveItem('listwrapper', {type: 'slide', direction: 'right'});
									LegalTerms.mainToolbar.setTitle('Legal Terms');
								}
							},
								
							{ xtype: 'spacer' },
							
							
							{ text: '', iconMask: true, iconCls: 'star',
								handler: function(){
				
									LegalTerms.Viewport.setActiveItem('favouritespanel', {type: 'slide', direction: 'left'});
									LegalTerms.mainToolbar.setTitle('My Favourites');
								}
				
							},							
			            ]
        });
		
		
		LegalTerms.detailToolbar = new Ext.Toolbar({
            items: [{
                text: 'back',
                ui: 'back',
                handler: function() {
                    LegalTerms.Viewport.setActiveItem('listwrapper', {type: 'slide', direction: 'right'});
                }
            }]
        });
		

		LegalTerms.backToolbar = new Ext.Toolbar({
			dock: 'bottom',												   
            items: [{
                text: 'BACK',
                ui: 'back',
					handler: function() {
						LegalTerms.Viewport.setActiveItem('listwrapper', {type: 'slide', direction: 'right'});
					}
				},
				
				{ xtype: 'spacer' },

				{
				text: 'Favourite',
                ui: 'confirm-round',
				iconCls: 'add',
				iconMask: true,

                handler: 
				
				function() {
					addFavourites(rec.data.lTerm, rec.data.lDefinition);
					//LegalTerms.favouriteStore.reload();
  
                }
            }]
        });
		
		LegalTerms.favouritesbackToolbar = new Ext.Toolbar({
			dock: 'bottom',												   
            items: [{
                text: 'BACK',
                ui: 'back',
					handler: function() {
						LegalTerms.Viewport.setActiveItem('favouritespanel', {type: 'slide', direction: 'right'});
					}
				},
				
				{ xtype: 'spacer' },

				{
				text: 'Remove Favourite',
				ui: 'decline-round',

                handler: 
				
				function() {	
					deleteFavourites(rec.data.lTerm);
					//LegalTerms.favouriteStore.reload();
  
                }
            }]
        });	
		

		LegalTerms.infobackToolbar = new Ext.Toolbar({
			dock: 'bottom',												   
            items: [{
                text: 'BACK',
                ui: 'back',
					handler: function() {
						LegalTerms.Viewport.setActiveItem('listwrapper', {type: 'slide', direction: 'right'});
					}
				}
				]
        });		

        LegalTerms.detailPanel = new Ext.Panel({
            id: 'detailpanel',
            tpl: '<div class="details"><strong>{lTerm}</strong><br/>{lDefinition}',
            dockedItems: [LegalTerms.backToolbar],

        });

        LegalTerms.favouritesdetailPanel = new Ext.Panel({
            id: 'favouritesdetailpanel',
           tpl: '<div class="details"><strong>{lTerm}</strong><br/>{lDefinition}',
            dockedItems: [LegalTerms.favouritesbackToolbar],

        });
		
		
        LegalTerms.infoPanel = new Ext.Panel({
            id: 'infopanel',
            layout: 'card',
            scroll: true,
			html: '<div class="aboutus"><h2>Version 1.11</h2><p>The Paul W. Tracey Solicitors Legal Terms Android App was developed by 2bscene Limited in partnership with Paul W. Tracey Solicitors. <br /><br />Do you need an answer to a legal question? <br /><br />Call Us on <br /><br /><a href="tel:1890940140">1890940140</a><br /><br /> or visit <br /><a href="http://www.traceysolicitors.ie">www.traceysolicitors.ie</a><br /><br /><br /><br />If you would like information on iPhone & Android App Development, please visit <a href="http://www.2bscene.ie">www.2bscene.ie</a><br /><br /><br /><br /><div id="disclaimer"><h2>Disclaimer</h2>The information contained in this application is for general information purposes only. The information is provided by Paul W. Tracey Solicitors and while we endeavour to keep the information up to date and correct, we make no representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the application or the information, products, services, or related graphics contained on the application for any purpose. Any reliance you place on such information is therefore strictly at your own risk.<br /><br />In no event will we be liable for any loss or damage including without limitation, indirect or consequential loss or damage, or any loss or damage whatsoever arising from loss of data or profits arising out of, or in connection with, the use of this application.<br /><br />Through this applicationyou are able to link to other websites which are not under the control of Paul W. Tracey Solicitors. We have no control over the nature, content and availability of those sites. The inclusion of any links does not necessarily imply a recommendation or endorse the views expressed within them.<br /><br />Every effort is made to keep the application up and running smoothly. However, Paul W. Tracey takes no responsibility for, and will not be liable for, the application being temporarily unavailable due to technical issues beyond our control.</p>',
            dockedItems: [LegalTerms.infobackToolbar],

        });



        LegalTerms.favouritesPanel = new Ext.List({
            id: 'favouritespanel',
            store: LegalTerms.favouriteStore,
            itemTpl: '<div class="contact">{lTerm}</div>',
			singleSelect: true,

			listeners:{
					itemtap: function(list, index){
						rec = LegalTerms.favouriteStore.getAt(index);
						
						
						var lTerm = rec.data.lTerm;
						var lID = rec.data.lid;
						
						//alert(lTerm + " " + lID);
						
						//alert(IndexItem);
						LegalTerms.favouritesdetailPanel.update(rec.data);
						LegalTerms.Viewport.setActiveItem('favouritesdetailpanel', {type: 'slide', direction: 'left'});
						LegalTerms.mainToolbar.setTitle('My Favourites');
				}
			},

        });
		
        LegalTerms.listPanel = new Ext.List({
            id: 'indexlist',
            store: LegalTerms.ListStore,
            itemTpl: '<div class="contact">{lTerm}</div>',
			grouped: true,
			indexBar: true,
			singleSelect: true,
			listeners:{
					itemtap: function(list, index){
						rec = LegalTerms.ListStore.getAt(index);
						var lTerm = rec.data.lTerm;
						LegalTerms.detailPanel.update(rec.data);
						LegalTerms.Viewport.setActiveItem('detailpanel', {type: 'slide', direction: 'left'});
				}
			},
        });
		
		

        LegalTerms.listWrapper = new Ext.Panel({
            id: 'listwrapper',
            layout: 'fit',
            items: [LegalTerms.listPanel],
            dockedItems: [{
						  
						  xtype: 'toolbar',
						  dock: 'bottom',
						  items: [
						  
				
				{
					xtype: 'searchfield',
					dock: 'bottom',
					width: 240,
					name: 'searchfield',
					placeHolder: 'Search...',
					listeners  : {
						scope: this,
						
						keyup: function(field) {
							LegalTerms.listPanel.scroller.scrollTo({
								x: 0,
								y: 0
							});
							
							var value = field.getValue();
							
							if (!value) {
								LegalTerms.ListStore.filterBy(function() {
									return true;
								});
							} else {
								var searches = value.split(' '),
									regexps  = [],
									i;
								
								for (i = 0; i < searches.length; i++) {
									if (!searches[i]) return;
									regexps.push(new RegExp(searches[i], 'i'));
								};
								
								LegalTerms.ListStore.filterBy(function(record) {
									var matched = [];
									
									for (i = 0; i < regexps.length; i++) {
										var search = regexps[i];
										
										if (record.get('lTerm').match(search) || record.get('lTerm').match(search)) matched.push(true);
										else matched.push(false);
									};
									
									if (regexps.length > 1 && matched.indexOf(false) != -1) {
										return false;
									} else {
										return matched[0];
									}
								});
							}
						}
					}
				},	
							{ xtype: 'spacer'},
							{  ui: 'action-round', text: '', iconMask: true, iconCls: 'info', 
								handler: function() {
									LegalTerms.Viewport.setActiveItem('infopanel', {type: 'slide', direction: 'left'});
								}
							},
			],
					
			},
			]
        });

        LegalTerms.Viewport = new Ext.Panel ({
            fullscreen: true,
            layout: 'card',
			dockedItems: [LegalTerms.mainToolbar],
            items: [LegalTerms.listWrapper, LegalTerms.detailPanel, LegalTerms.favouritesPanel, LegalTerms.favouritesdetailPanel, LegalTerms.infoPanel]
        });

    }
});

function initDatabase() {
  try {
      if (!window.openDatabase) {
    	  Ext.Msg.alert('ERROR','Could not create local storage!! Please upgrade your browser.');
      } else {
          var shortName = 'FAVOURITESDB';
          var version = '1.0';
          var displayName = 'Favourites Database';
          var maxSize = 100000; //  bytes
          FAVOURITESDB = openDatabase(shortName, version, displayName, maxSize);
      	  createTables();
      //selectAll();
      }
  } catch(e) {
      return;
  }
}

function createTables(){
  FAVOURITESDB.transaction(
        function (transaction) {
          transaction.executeSql('CREATE TABLE IF NOT EXISTS favourites(id INTEGER NOT NULL PRIMARY KEY, lTerm TEXT NOT NULL, lDefinition TEXT NOT NULL);', []);
  		  //transaction.executeSql("INSERT INTO favourites(lterm, lID) VALUES ('TEST4w3', 3);", []); 
        }
    );
}

function getFavorites(){
  FAVOURITESDB.transaction(
      function (transaction) {
          transaction.executeSql('SELECT * FROM favourites;', [],  allDataSelectHandler);
      }
  );
}

function addFavourites(lTerm, lDefinition){
	var lTermText = lTerm;
	var lDefinition = lDefinition;
  
	//alert(lDefinition);
  
  	FAVOURITESDB.transaction(
    	function (transaction) {
			transaction.executeSql('SELECT * FROM favourites WHERE lTerm = ?;', [lTerm],  insertFavourite);
					
			//transaction.executeSql("INSERT INTO favourites(lTerm, lDefinition) VALUES (?, ?);", [lTermText,lDefinition]); 
			//transaction.executeSql('SELECT * FROM favourites;', [],  allDataSelectHandler);
			//transaction.executeSql("DELETE FROM favourites", [], allDataSelectHandler); 		  
			//transaction.executeSql("DROP TABLE favourites", [], allDataSelectHandler);
			//LegalTerms.favouritesPanel.doLayout();
		}
	);
	
	function insertFavourite(transaction, results){
		if (results.rows.length == 0){
			transaction.executeSql("INSERT INTO favourites(lTerm, lDefinition) VALUES (?, ?);", [lTermText,lDefinition]); 
			LegalTerms.favouriteStore.add({'lTerm':lTermText,'lDefinition':lDefinition});

			Ext.Msg.alert(lTermText, 'was added to your favourites!');
			LegalTerms.Viewport.setActiveItem('favouritespanel', {type: 'slide', direction: 'right'});
			LegalTerms.mainToolbar.setTitle('My Favourites');
			
		} else {
			Ext.Msg.alert(lTermText, 'is already in your favourites!');
			LegalTerms.Viewport.setActiveItem('favouritespanel', {type: 'slide', direction: 'right'});
			LegalTerms.mainToolbar.setTitle('My Favourites');
		}
	}

}


function deleteFavourites(lTerm){
	var lTermText = lTerm;
  
	//alert(lDefinition);
  
  	FAVOURITESDB.transaction(
    	function (transaction) {
			transaction.executeSql('DELETE FROM favourites WHERE lTerm = ?;', [lTerm]);
		}
	);

			var findItem = LegalTerms.favouriteStore.findRecord('lTerm',lTerm); 					
			LegalTerms.favouriteStore.remove(findItem);
			
			Ext.Msg.alert(lTermText, 'has been removed your favourites!');
			LegalTerms.Viewport.setActiveItem('favouritespanel', {type: 'slide', direction: 'right'});
			
}



function allDataSelectHandler(transaction, results){
 if (results.rows.length == 0){
	
	//alert('rows length = 0');
	
} else {
// Loop through the records and add them to the store
    for (var i=0; i < results.rows.length; i++){
          row = results.rows.item(i);
	        LegalTerms.favouriteStore.add({'lTerm':row['lTerm'],'lDefinition':row['lDefinition']});
	
			//alert(row['lTerm']);		
     }
  }
  

}



initDatabase();
getFavorites();
