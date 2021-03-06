/**
 * Shoutbox.m
 *
 * @author mpdeimos
 * @date 08/02/26
 */

#include <lib/std.mi>
#include <lib/colormgr.mi>
#include "../BrowserPro/convert_address.mi"
//#include "../../../lib/ClassicProFile.mi"
#include <lib/com/songinfo.m>

Function updateMode(int newMode);

Global Browser brw;
Global Edit msg;
Global Text txt, chars;
Global layer trap;

Global String baseurl;
Global String name, urlname;

Global Timer ref;

Global Group parent;

Global int curMode, delay;

Global ColorMgr cm;

#define SHOUTBOX_VERSION "0.64"

#define MODE_USERNAME 1
#define MODE_CHAT 2
#define MODE_REFRESH 3

#define MAX_CHARS_CHAT 200
#define MAX_CHARS_USERNAME 20

#define BASEURL_TEMPLATE "http://cpro.skinconsortium.com/services/cpro-shoutbox.php?bg="+getColorHex("wasabi.list.background")+"&txt="+getColorHex("wasabi.list.text")+"&v="+SHOUTBOX_VERSION+urlname;

system.onScriptLoaded ()
{
	parent = getScriptGroup();
	brw = parent.findObject("brw");
	msg = parent.findObject("edit.msg");
	txt = parent.findObject("txt.msg");
	chars = parent.findObject("txt.chars");
	trap = parent.findObject("trap");

	baseurl = 

	name = getPrivateString("classicPro_shoutbox", "username", "");

	songinfo_reload();

	if (name == "")
	{
		updateMode(MODE_USERNAME);
		urlname = "";

	}
	else
	{
		updateMode(MODE_CHAT);	
		urlname =  "&name=" + urlencode(name);
	}

	baseurl = BASEURL_TEMPLATE;
	//baseurl = "http://localhost/sc3/classicpro/services/cpro-shoutbox.php?bg="+getColorHex("wasabi.list.background")+"&txt="+getColorHex("wasabi.list.text");
	
	ref = new Timer;
	delay = getPrivateInt("classicPro_shoutbox", "refresh", 30)*1000;
	if (delay > 0)
		ref.setDelay(delay);

	cm = new ColorMgr;

	//debug(brw.messageToJS("hello", "world", 0, 5, 6));
	/*int h = ClassicProFile.createFile("C:/blah.tzt");
	ClassicProFile.writeFile(h, "bla\r\nyea");
	ClassicProFile.closeFile(h);*/
}

cm.oncolorthemechanged(String newtheme)
{
	baseurl = BASEURL_TEMPLATE
	
	brw.navigateUrl(baseurl);
}

/*
Global boolean inited = false;
init()
{
	if (inited)
		return;
	inited = true;
}*/

system.onTitleChange (String newtitle)
{
	songinfo_reload();
}


updateMode(int newmode)
{
	if (newMode == MODE_USERNAME)
	{
		txt.setText("Username:");
		msg.setText(getPrivateString("classicPro_shoutbox", "username", ""));
		chars.setText(integerToString(MAX_CHARS_USERNAME - strlen(msg.getText())));
	}
	else if (newMode == MODE_CHAT)
	{
		txt.setText("Message:");
		msg.setText("");
		chars.setText(integerToString(MAX_CHARS_CHAT - strlen(msg.getText())));
	}
	else if (newMode == MODE_REFRESH)
	{
		txt.setText("Refresh:");
		msg.setText(integerToString(getPrivateInt("classicPro_shoutbox", "refresh", 30)));
		chars.setText("sec");		
	}
	
	curMode = newMode;
}

parent.onResize (int x, int y, int w, int h)
{
	if (h < 1)
	{
		msg.hide();
	}
	else
	{
		msg.show();	
	}
}


parent.onSetVisible (Boolean onoff)
{
	if (onoff && parent.getheight() > 0)
	{
		msg.show();
	}
	else
	{
		msg.hide();
	}
	
	
	if (onoff && delay > 0)
	{
		ref.start();
	}
	else
	{
		ref.stop();
	}
	brw.navigateUrl(baseurl);
}

ref.onTimer ()
{
	if (isMinimized())
	{
		return;
	}
	brw.navigateUrl(baseurl);
}

msg.onEditUpdate()
{
	if (newMode == MODE_USERNAME)
	{
		chars.setText(integerToString(MAX_CHARS_USERNAME - strlen(msg.getText())));
	}
	else if (newMode == MODE_CHAT)
	{
		chars.setText(integerToString(MAX_CHARS_CHAT - strlen(msg.getText())));
	}	
}

msg.onEnter()
{
	if (getText() == "")
	{
		return;
	}

	if (curMode == MODE_USERNAME)
	{
		name = getText();
		setPrivateString("classicPro_shoutbox", "username", name);
		
		urlname =  "&name=" + urlencode(name);	
		baseurl = BASEURL_TEMPLATE;

		updateMode(MODE_CHAT);
	}
	else if (curMode == MODE_CHAT)
	{
		if (name == "")
		{
			updateMode(MODE_USERNAME);
			return;
		}
		
		ref.stop();
		brw.navigateUrl(baseurl + "&msg=" + urlencode(msg.getText()) + "&artist=" + urlEncode(songinfo_artist) + "&title=" + urlEncode(songinfo_title));
		setText("");
		if (delay > 0)
		{
			ref.start();
		}
		
	}
	else if (curMode == MODE_REFRESH)
	{
		delay = stringToInteger(getText());
		setPrivateInt("classicPro_shoutbox", "refresh", delay);
		delay *= 1000;
		if (delay > 0)
		{
			ref.stop();
			ref.setDelay(delay);
			ref.start();
		}
		else
		{
			ref.stop();
		}
		updateMode(MODE_CHAT);
	}
}

trap.onEnterArea ()
{
	txt.setText("<Options>");
}

trap.onLeaveArea ()
{
	if (curMode == MODE_USERNAME)
	{
		txt.setText("username:");
	}
	else if (curMode == MODE_CHAT)
	{
		txt.setText("Message:");
	}
	else if (curMode == MODE_REFRESH)
	{
		txt.setText("Refresh:");
	}
}

trap.onLeftButtonUp (int x, int y)
{
	PopupMenu men = new PopupMenu;
	men.addCommand("Let's Shout!", MODE_CHAT, curMode == MODE_CHAT, curMode == MODE_CHAT);
	men.addCommand("Set Username", MODE_USERNAME, curMode == MODE_USERNAME, curMode == MODE_USERNAME);
	men.addCommand("Set Refresh-Interval", MODE_REFRESH, curMode == MODE_REFRESH, curMode == MODE_REFRESH);
	men.addSeparator();
	men.addCommand("Reload Shoutbox", 1001, 0, 0);

	int res = men.popAtMouse();

	if (res > 1000)
	{
		if (res == 1001)
		{
			brw.navigateUrl(baseurl);
		}
		
	}
	else if (res > 0)
		updateMode(res);

	complete;
}
/*
brw.messageToMaki(String str1, String str2, int i1, int i2, int i3)
{
	debugInt(i3);
	return "yea";
}
*/
