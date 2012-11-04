/**
 * ClassicProTabButton.m
 *
 * Tab Button handling including moveable tabs
 *
 * @package	com.skinconsortium.cpro.one
 * @author	mpdeimos
 * @date	2008/11/21
 */

#include <lib/std.mi>

#include dispatch_codes.m

Function setButtonState(int mode);

Global ToggleButton trigger;
Global Group parent;
Global GuiObject grid;
Global Text label;
Global boolean wasActive, movingTab, mouseDown, moved;
Global int dx;

// HACK (mpdeimos) this timer is a big HACK! Remove it if possible
// needed to recieve button deactivated msgs (mainly to send the action)
// test w/ GTAIV skin
Global timer tmr;

System.onScriptLoaded ()
{
	setDispatcher(getScriptGroup().getParent());

	trigger = getScriptGroup().findObject("cpro.tab.button");
	label = getScriptGroup().findObject("cpro.tab.text");
	grid = getScriptGroup().findObject("cpro.tab.grid");
	parent = getScriptGroup();

	tmr = new Timer;
	tmr.setDelay(10);
}

System.onScriptUnloading ()
{
	tmr.stop();
	delete tmr;
}


trigger.onLeftButtonDown (int x, int y)
{
	mouseDown=true;
	wasActive = getActivated();
	dx = x;

	sendMessage(ON_LEFT_BUTTON_DOWN, x, x, 0, "", "", parent);
}

trigger.onMouseMove (int x, int y)
{
	if(mouseDown){
		sendMessage(ON_MOUSE_MOVE, x, x, 0, "", "", parent);
		moved = true;
		if(!movingTab){
			if (dx > x+4 || dx < x-4){
				movingTab=true;
			}
		}
	}
}

trigger.onLeftButtonUp (int x, int y)
{
	mouseDown=false;
	if (!movingTab)
	{
		if(!wasActive) sendMessageO(ON_TAB_ACTIVATED, parent);
		setActivated(1);
	}
	else
	{
		setActivated(wasActive);
	}
	
	movingTab=false;
	sendMessage(ON_LEFT_BUTTON_UP, x, x, moved, "", "", parent);
	moved = false;
}

trigger.onRightButtonUp (int x, int y)
{
	if (movingTab)
	{
		complete;
		return;
	}
	
	sendMessage(ON_RIGHT_BUTTON_UP, x, clientToScreenX(trigger.getLeft()), clientToScreenY(trigger.getTop()+26), "", "", parent);
}

trigger.onActivate (boolean onOff)
{
	if (onOff)
	{
		setButtonState(1);
	}
	else
	{
		setButtonState(2);
		tmr.stop();
		tmr.start();
	}
}

tmr.onTimer ()
{
	tmr.stop();
	sendMessageO(ON_TAB_OFF, parent);
}


trigger.onEnterArea()
{
	if (!trigger.getActivated())
	{
		setButtonState(3);
		sendMessageO(ON_ENTER_AREA, parent);
	}
}

trigger.onLeaveArea()
{
	if (!trigger.getActivated())
	{
		setButtonState(2);
		sendMessageO(ON_LEAVE_AREA, parent);
	}
}

setButtonState (int mode)
{
	grid.setXmlParam("topleft", "sui.tab.left."+integerToString(mode));
	grid.setXmlParam("top", "sui.tab.center."+integerToString(mode));
	grid.setXmlParam("topright", "sui.tab.right."+integerToString(mode));
	label.setXmlParam("color", "");

	if (mode == 1)
	{
		label.setXmlParam("y", "-1");
		label.setXmlParam("color", "cpro2.color.tab.on");
	}
	else if (mode == 2)
	{
		label.setXmlParam("color", "cpro2.color.tab.off");
		label.setXmlParam("y", "0");
	}
	else
	{
		label.setXmlParam("y", "0");
		label.setXmlParam("color", "cpro2.color.tab.hover");
	}
}
/*
label.onTextChanged (String newtxt)
{
	trigger.setXmlParam("tooltip", newtxt);
	sendMessageO(ON_TAB_TEXT_UPDATED, parent);
}
*/