/********************************************************\
**  Filename:	coverflow.m				**
**  Version:	1.0					**
**  Date:	20. Nov. 2007 - 15:25			**
**********************************************************
**  Type:	winamp.wasabi/maki			**
**  Project:	Cover Flow				**
**********************************************************
**  Author:	Martin Poehlmann aka Deimos		**
**  E-Mail:	martin@skinconsortium.com		**
**  Internet:	http://www.skinconsortium.com		**
**		http://home.cs.tum.edu/~poehlman	**
\********************************************************/


/***** greatly modified by leechbite.com :D ******/


#include <lib/std.mi>
#include <lib/pldir.mi>

function update();
function updatePartial();
function updateDim(float offPos);
function updateCover(group g, int index);
function setAAgroupToPos(group g, float pos);
function group getAAgroup(int index);

#define SCROLL_UP 1
#define SCROLL_DOWN 2
#define EYE_DIST_RATIO 1.5
#define AA_WIDTH_RATIO 0.3

// midpoint = numcovers/2 + 1
#define NUMCOVERS 7
#define MIDPOINT 4

Class Layer AlbumCover;

global group scriptGroup;

global PlEdit PeListener;

Global group gaa1, gaa2, gaa3, gaa4, gaa5, gaa6, gaa7;
global AlbumCover aaref;
global int aamidpoint = 4; // sets the current albumart midpoint

global float currPos = 0, aaWidth;
global int lastPos = -1, scrollDir = SCROLL_DOWN;
global int scw, sch, eyeDist;
global int numPLItems, targetPos;

global int mousePressed, lastX, lastX2,  lasttime, origtime, noSlow;
global float lastplpos, lastmove, scrollSpeed;

global timer delayRefresh, scrollAnim, delayOnLoad;
global timer animtest;

global layer mousetrap;

System.onScriptLoaded () {
	scriptGroup = getScriptGroup();

	gaa1 = scriptGroup.getObject("cover.flow.aa1");
	gaa2 = scriptGroup.getObject("cover.flow.aa2");
	gaa3 = scriptGroup.getObject("cover.flow.aa3");
	gaa4 = scriptGroup.getObject("cover.flow.aa4");
	gaa5 = scriptGroup.getObject("cover.flow.aa5");
	gaa6 = scriptGroup.getObject("cover.flow.aa6");
	gaa7 = scriptGroup.getObject("cover.flow.aa7");
	
	delayRefresh = new Timer;
	delayRefresh.setDelay(50);
	
	scrollAnim = new Timer;
	scrollAnim.setDelay(50);
	
	animTest =  new Timer;
	animTest.setDelay(2000);

	currPos = getPrivateInt(getSkinName(),"PLTopTrack",5);
	aamidpoint = MIDPOINT;
	numPLItems = PlEdit.getNumTracks();
		
	scriptGroup.onResize(0,0,scriptGroup.getWidth(),scriptGroup.getHeight()); // sets 3D variables;
	
	PeListener = new PlEdit;
	update();
	
	//delayOnLoad = new Timer;
	//delayRefresh.setDelay(50);
	
	mousetrap = scriptGroup.getObject("mousetrap");
}
/*
system.onPlay() {
	animTest.start();
}

system.onStop() {
	animTest.stop();
}

animTest.onTimer() {
	if (scrollAnim.isRunning()) return;
	
	if (currPos < (numPLItems+1)) {
		targetPos = currPos + 5;
		scrollDir = SCROLL_UP;
		scrollAnim.start();
	} else stop();
}
*/
system.onScriptUnloading() {
	delete delayRefresh;
	delete scrollAnim;
}

PeListener.onPleditModified () {
	if (!delayRefresh.isRunning()) delayRefresh.start();

}

// delay needed otherwise it will update like crazy on PL change.
delayRefresh.onTimer() {
	stop();
	
	currPos = 0;
	numPLItems = PlEdit.getNumTracks();
	
	update();
}

scriptGroup.onSetVisible(int on) { 
	if (!on) return;
	
	lastpos = -1;
	update();
	scriptGroup.onResize(0,0,scriptGroup.getWidth(),scriptGroup.getHeight()); 
}

scriptGroup.onResize(int x, int y, int w, int h) {
	scw = w;
	sch	= h;
	
	eyeDist = w*EYE_DIST_RATIO;
	aaWidth = w*AA_WIDTH_RATIO;
	
	if (!scriptGroup.isVisible()) return;
	
	updateDim(0);
}

updateCover(group g, int index) {
	if (!scriptGroup.isVisible()) return;
	if (!g) return;
	
	if (index < 0 || index >= numPLItems) { g.hide(); return; }
	
	layer aa = g.getObject("aa");
	aaref = g.getObject("aa.ref");
	
	string fname = PlEdit.getFileName(index);
	aa.setXmlParam("source", fname);
	aaref.setXmlParam("source", fname);
	
	g.show();
	
	aaref.fx_setEnabled(0);
	
	aaref.fx_setBgFx(0);
  	aaref.fx_setWrap(0);
  	aaref.fx_setBilinear(1);
	aaref.fx_setAlphaMode(1);
  	aaref.fx_setGridSize(10,10);
  	aaref.fx_setRect(1);
	aaref.fx_setClear(0);
  	aaref.fx_setLocalized(1);
  	aaref.fx_setRealtime(0);
  	
  	aaref.fx_setEnabled(1);
  	aaref.fx_restart();
}

AlbumCover.fx_onGetPixelY(double r, double d, double x, double y) {
	return -y;
}

AlbumCover.fx_onGetPixelA(double r, double d, double x, double y) {
	double ret = 0.35-y*0.65; // simplified, original: (2-(1+y)*1.3)*0.5;
	if (ret < 0) ret = 0;
	return ret;
}

group getAAgroup(int index) {
	index = aamidpoint-MIDPOINT+index;
	if (index > NUMCOVERS) index = index - NUMCOVERS;
	if (index < 1) index = NUMCOVERS + index;
	
	if (index == 1) return gaa1;
	else if (index == 2) return gaa2;
	else if (index == 3) return gaa3;
	else if (index == 4) return gaa4;
	else if (index == 5) return gaa5;
	else if (index == 6) return gaa6;
	else if (index == 7) return gaa7;
	else return NULL;
}

update() {
	int cur = currPos;
	if (currPos - cur > 0.5) cur++;
	
	float offs = cur - currPos;
	updateDim(offs);

	updateCover(getAAgroup(1), cur-3);
	updateCover(getAAgroup(2), cur-2);
	updateCover(getAAgroup(3), cur-1);
	updateCover(getAAgroup(4), cur);
	updateCover(getAAgroup(5), cur+1);
	updateCover(getAAgroup(6), cur+2);
	updateCover(getAAgroup(7), cur+3);
	
	lastPos = cur;
}

updatePartial() {
	int cur = currPos;
	group gg1, ggmid, gglast;
	if (currPos - cur > 0.5) cur++;
	
	float offs = cur - currPos;
	
	
	if ((cur - lastPos) == 1) {
		aamidpoint++;
		if (aamidpoint > NUMCOVERS) aamidpoint = 1;
		
		ggmid = getAAgroup(MIDPOINT);
		gglast = getAAgroup(NUMCOVERS);
		
		updateCover(gglast, cur+3);
		gglast.bringToBack();
		ggmid.bringToFront();
	} else if ((cur - lastPos) == -1) {
		aamidpoint--;
		if (aamidpoint < 1) aamidpoint =NUMCOVERS;
		
		gg1 = getAAgroup(1);
		ggmid = getAAgroup(MIDPOINT);
		
		updateCover(gg1, cur-3);
		gg1.bringToBack();
		ggmid.bringToFront();
	} else if (lastPos == cur) {
		updateDim(offs);
		return;
	}

	updateDim(offs);
	
	lastPos = cur;
}

updateDim(float offPos) {
	setAAgroupToPos(getAAgroup(1), offPos-3);
	setAAgroupToPos(getAAgroup(2), offPos-2);
	setAAgroupToPos(getAAgroup(3), offPos-1);
	setAAgroupToPos(getAAgroup(4), offPos);
	setAAgroupToPos(getAAgroup(5), offPos+1);
	setAAgroupToPos(getAAgroup(6), offPos+2);
	setAAgroupToPos(getAAgroup(7), offPos+3);
}

setAAgroupToPos(group g, float pos) {
	int xmid = scw/2;
	int ymid = sch/2;
	
	if (eyeDist == 0) return;

	//*** sets 3D location of cover	
	int x1 = (pos*1.3-0.5)*aaWidth;
	int y1 = pos*aaWidth*3;
	int z1 = 0.3*aaWidth;
	if (y1 < 0) y1 = -y1;
	
	//*** calculates 3D coordinates to view plane
	double rat = eyeDist/(y1+eyeDist);
	int xp = x1*rat;
	int w = aaWidth*rat;
	int h = w*1.667;
	
	int yp = z1*rat;
	yp = ymid*1.1 + yp - w;

	g.setXMLParam("x",integerToString(xmid+xp));
	g.setXMLParam("y",integerToString(yp));
	g.setXMLParam("w",integerToString(w));
	g.setXMLParam("h",integerToString(h));
}


// **** animation scripts
scrollAnim.onTimer() {
	//int targetpix = targetPos;
	float speed;
	
	speed = (targetPos-currPos)*0.05;
	if (speed < 0) speed = -speed;
	
	if (speed > scrollSpeed) speed = scrollSpeed;
	if (noSlow) speed = scrollSpeed;

	if (speed < 0.07) speed = 0.07;
		
	if (scrollDir == SCROLL_UP) {
		currPos = currPos + speed;
		if (currPos >= targetPos) {
			currPos = targetPos;
			stop();
		}
	} else if (scrollDir == SCROLL_DOWN) {
		currPos = currPos - speed;
		if (currPos <= targetPos) {
			currPos = targetPos;
			stop();
		}
	} else stop();

	updatePartial();
}


mousetrap.onLeftButtonDblClk(int x, int y) {
/*
	lastplpos = pltoptrack;
	
	int sel = (y - mouseTrap.getTop()) / texth;
	currSel = sel + lastplpos;
	
	if (currSel >= pledit.getNumTracks()) currSel = pledit.getNumTracks()-1;
	
	refreshPL();
	
	PlEdit.playTrack(currSel);

	complete;*/
	
}

mousetrap.onLeftButtonDown(int x, int y) {
	mousePressed = 1;
	if (scrollAnim.isRunning()) scrollAnim.stop();
	
	lastX = getMousePosX();
	lastX2 = lastX;
	lastmove = 0;
	
	lastplpos = currPos;
	lasttime = getTimeOfDay();
	origtime = lasttime;
	
	int sel = x - mouseTrap.getTop();
}

mousetrap.onMouseMove(int x, int y) {
	if (!mousePressed) return;
	
	float move = lastX - getMousePosX();
	
	if ((move < 3) && (move > -3)) { lastmove = 0; return; }

	//int lasttop = currPos;
	
	int numtracks = pledit.getNumTracks();
	
	float newpos = lastplpos + move / 200;

	if (newpos < -0.5) newpos = -0.5;
	if (newpos > (numtracks-0.5)) newpos = numtracks-0.5;
	
	currPos = newpos;
	
	int timediff = getTimeofDay()-lasttime;
	lasttime = getTimeOfDay();
	
	if (timediff <= 0) timediff = 1;
	lastmove = (lastX2 - getMousePosX()) / timediff;
	lastX2 = getMousePosX();
	
	updatePartial();
}

mousetrap.onLeftButtonUp(int x, int y) {
	mousePressed = 0;
	
	updatePartial();
	
	int numtracks = pledit.getNumTracks();

	if (scrollAnim.isRunning()) return;
	
	if (lastmove >= 0) {
		float tp = currPos + lastmove;
		targetPos = tp;
		if (tp - targetPos > 0.5 && targetPos < numtracks-1) targetPos++;
		
		if (targetPos >= numtracks) targetPos = numtracks - 1;
		if (targetPos < 0) targetPos = 0;
			
		noSlow = 0;
		scrollSpeed = lastmove;
		if (scrollSpeed < 0.07) scrollSpeed = 0.07;
	} else {
		float tp = currPos + lastmove;
		targetPos = tp;
		if (tp - targetPos > 0.5 && targetPos > 1) targetPos++;
		
		if (targetPos >= numtracks) targetPos = numtracks - 1;
		if (targetPos < 0) targetPos = 0;
			
		noSlow = 0;
		scrollSpeed = -lastmove;
		if (scrollSpeed < 0.07) scrollSpeed = 0.07;
	}
	
	if (targetPos > currPos) 
		scrollDir = SCROLL_UP;
	else
		scrollDir = SCROLL_DOWN;
	scrollAnim.start();


}

