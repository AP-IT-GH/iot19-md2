<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="RFM95W-868S2">
<packages>
<package name="XCVR_RFM95W-868S2">
<wire x1="-8" y1="8" x2="8" y2="8" width="0.2" layer="21"/>
<wire x1="8" y1="8" x2="8" y2="-8" width="0.2" layer="51"/>
<wire x1="8" y1="-8" x2="-8" y2="-8" width="0.2" layer="21"/>
<wire x1="-8" y1="-8" x2="-8" y2="8" width="0.2" layer="51"/>
<wire x1="-8.65" y1="8.25" x2="8.65" y2="8.25" width="0.05" layer="39"/>
<wire x1="8.65" y1="8.25" x2="8.65" y2="-8.25" width="0.05" layer="39"/>
<wire x1="8.65" y1="-8.25" x2="-8.65" y2="-8.25" width="0.05" layer="39"/>
<wire x1="-8.65" y1="-8.25" x2="-8.65" y2="8.25" width="0.05" layer="39"/>
<circle x="-9.75" y="7" radius="0.291546875" width="0.2" layer="21"/>
<rectangle x1="-10.0115" y1="6.8078" x2="-9.5" y2="7.2" layer="21"/>
<text x="-7.61456875" y="8.866959375" size="1.27243125" layer="25">&gt;NAME</text>
<text x="-7.46346875" y="-10.1183" size="1.2723" layer="27">&gt;VALUE</text>
<smd name="1" x="-7.4" y="7" dx="1.95" dy="1.05" layer="1"/>
<smd name="2" x="-7.4" y="5" dx="1.95" dy="1.05" layer="1"/>
<smd name="3" x="-7.4" y="3" dx="1.95" dy="1.05" layer="1"/>
<smd name="4" x="-7.4" y="1" dx="1.95" dy="1.05" layer="1"/>
<smd name="5" x="-7.4" y="-1" dx="1.95" dy="1.05" layer="1"/>
<smd name="6" x="-7.4" y="-3" dx="1.95" dy="1.05" layer="1"/>
<smd name="7" x="-7.4" y="-5" dx="1.95" dy="1.05" layer="1"/>
<smd name="8" x="-7.4" y="-7" dx="1.95" dy="1.05" layer="1"/>
<smd name="9" x="7.4" y="-7" dx="1.95" dy="1.05" layer="1" rot="R180"/>
<smd name="10" x="7.4" y="-5" dx="1.95" dy="1.05" layer="1" rot="R180"/>
<smd name="11" x="7.4" y="-3" dx="1.95" dy="1.05" layer="1" rot="R180"/>
<smd name="12" x="7.4" y="-1" dx="1.95" dy="1.05" layer="1" rot="R180"/>
<smd name="13" x="7.4" y="1" dx="1.95" dy="1.05" layer="1" rot="R180"/>
<smd name="14" x="7.4" y="3" dx="1.95" dy="1.05" layer="1" rot="R180"/>
<smd name="15" x="7.4" y="5" dx="1.95" dy="1.05" layer="1" rot="R180"/>
<smd name="16" x="7.4" y="7" dx="1.95" dy="1.05" layer="1" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="RFM95W-868S2">
<wire x1="-15.24" y1="-15.24" x2="15.24" y2="-15.24" width="0.254" layer="94"/>
<wire x1="15.24" y1="-15.24" x2="15.24" y2="12.7" width="0.254" layer="94"/>
<wire x1="15.24" y1="12.7" x2="-15.24" y2="12.7" width="0.254" layer="94"/>
<wire x1="-15.24" y1="12.7" x2="-15.24" y2="-15.24" width="0.254" layer="94"/>
<text x="-15.2563" y="13.9849" size="1.7799" layer="95">&gt;NAME</text>
<text x="-15.265" y="-17.8092" size="1.78091875" layer="96">&gt;VALUE</text>
<pin name="MISO" x="-17.78" y="10.16" length="short" direction="in"/>
<pin name="SCK" x="-17.78" y="7.62" length="short" direction="in" function="clk"/>
<pin name="NSS" x="-17.78" y="5.08" length="short" direction="in"/>
<pin name="RESET" x="-17.78" y="2.54" length="short"/>
<pin name="DIO5" x="-17.78" y="0" length="short"/>
<pin name="DIO3" x="-17.78" y="-2.54" length="short"/>
<pin name="DIO4" x="-17.78" y="-5.08" length="short"/>
<pin name="DIO0" x="-17.78" y="-7.62" length="short"/>
<pin name="DIO1" x="-17.78" y="-10.16" length="short"/>
<pin name="DIO2" x="-17.78" y="-12.7" length="short"/>
<pin name="MOSI" x="17.78" y="-2.54" length="short" direction="out" rot="R180"/>
<pin name="GND" x="17.78" y="-7.62" length="short" direction="pwr" rot="R180"/>
<pin name="GND@1" x="17.78" y="-10.16" length="short" direction="pwr" rot="R180"/>
<pin name="ANT" x="17.78" y="5.08" length="short" direction="pas" rot="R180"/>
<pin name="GND@2" x="17.78" y="-12.7" length="short" direction="pwr" rot="R180"/>
<pin name="3_3V" x="17.78" y="10.16" length="short" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RFM95W-868S2" prefix="U">
<description>Mod Txrx Lora +20dbm 868mhz Smd</description>
<gates>
<gate name="G$1" symbol="RFM95W-868S2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="XCVR_RFM95W-868S2">
<connects>
<connect gate="G$1" pin="3_3V" pad="13"/>
<connect gate="G$1" pin="ANT" pad="9"/>
<connect gate="G$1" pin="DIO0" pad="14"/>
<connect gate="G$1" pin="DIO1" pad="15"/>
<connect gate="G$1" pin="DIO2" pad="16"/>
<connect gate="G$1" pin="DIO3" pad="11"/>
<connect gate="G$1" pin="DIO4" pad="12"/>
<connect gate="G$1" pin="DIO5" pad="7"/>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="GND@1" pad="8"/>
<connect gate="G$1" pin="GND@2" pad="10"/>
<connect gate="G$1" pin="MISO" pad="2"/>
<connect gate="G$1" pin="MOSI" pad="3"/>
<connect gate="G$1" pin="NSS" pad="5"/>
<connect gate="G$1" pin="RESET" pad="6"/>
<connect gate="G$1" pin="SCK" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" RF TXRX MODULE ISM&lt;1GHZ "/>
<attribute name="MF" value="RF"/>
<attribute name="MP" value="RFM95W-868S2"/>
<attribute name="PACKAGE" value="SMD-16 Hope Microelectronics"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="2X05" urn="urn:adsk.eagle:footprint:22358/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.35" y1="-1.905" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-5.08" y="1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="0" y="1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="5.08" y="1.27" drill="1.016" shape="octagon"/>
<text x="-6.35" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.35" y="-4.445" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="-1.016" layer="51"/>
<rectangle x1="-5.334" y1="1.016" x2="-4.826" y2="1.524" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
<rectangle x1="4.826" y1="1.016" x2="5.334" y2="1.524" layer="51"/>
<rectangle x1="4.826" y1="-1.524" x2="5.334" y2="-1.016" layer="51"/>
</package>
<package name="2X05/90" urn="urn:adsk.eagle:footprint:22359/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.35" y1="-1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="6.985" x2="-5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.985" x2="5.08" y2="1.27" width="0.762" layer="21"/>
<pad name="2" x="-5.08" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="4" x="-2.54" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="6" x="0" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="8" x="2.54" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="10" x="5.08" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="1" x="-5.08" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="3" x="-2.54" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="5" x="0" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="7" x="2.54" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="9" x="5.08" y="-6.35" drill="1.016" shape="octagon"/>
<text x="-6.985" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="8.255" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-5.461" y1="0.635" x2="-4.699" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="4.699" y1="0.635" x2="5.461" y2="1.143" layer="21"/>
<rectangle x1="-5.461" y1="-2.921" x2="-4.699" y2="-1.905" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-5.461" y1="-5.461" x2="-4.699" y2="-4.699" layer="21"/>
<rectangle x1="-5.461" y1="-4.699" x2="-4.699" y2="-2.921" layer="51"/>
<rectangle x1="-2.921" y1="-4.699" x2="-2.159" y2="-2.921" layer="51"/>
<rectangle x1="-2.921" y1="-5.461" x2="-2.159" y2="-4.699" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-5.461" x2="0.381" y2="-4.699" layer="21"/>
<rectangle x1="-0.381" y1="-4.699" x2="0.381" y2="-2.921" layer="51"/>
<rectangle x1="2.159" y1="-4.699" x2="2.921" y2="-2.921" layer="51"/>
<rectangle x1="2.159" y1="-5.461" x2="2.921" y2="-4.699" layer="21"/>
<rectangle x1="4.699" y1="-2.921" x2="5.461" y2="-1.905" layer="21"/>
<rectangle x1="4.699" y1="-5.461" x2="5.461" y2="-4.699" layer="21"/>
<rectangle x1="4.699" y1="-4.699" x2="5.461" y2="-2.921" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="2X05" urn="urn:adsk.eagle:package:22470/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="2X05"/>
</packageinstances>
</package3d>
<package3d name="2X05/90" urn="urn:adsk.eagle:package:22471/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="2X05/90"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINH2X5" urn="urn:adsk.eagle:symbol:22357/1" library_version="4">
<wire x1="-6.35" y1="-7.62" x2="8.89" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-7.62" x2="8.89" y2="7.62" width="0.4064" layer="94"/>
<wire x1="8.89" y1="7.62" x2="-6.35" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-7.62" width="0.4064" layer="94"/>
<text x="-6.35" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="5.08" y="5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="3" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="5.08" y="2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="5" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="5.08" y="0" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="7" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="9" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="5.08" y="-5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-2X5" urn="urn:adsk.eagle:component:22531/4" prefix="JP" uservalue="yes" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINH2X5" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2X05">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22470/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="35" constant="no"/>
</technology>
</technologies>
</device>
<device name="/90" package="2X05/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22471/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="U.FL-R-SMT-1_10_">
<packages>
<package name="HRS_U.FL-R-SMT-1(10)">
<circle x="0" y="0" radius="1" width="0.127" layer="51"/>
<circle x="0" y="0" radius="0.3" width="0" layer="51"/>
<wire x1="-2.25" y1="1.55" x2="2.25" y2="1.55" width="0.05" layer="39"/>
<wire x1="2.25" y1="1.55" x2="2.25" y2="-2.3" width="0.05" layer="39"/>
<wire x1="2.25" y1="-2.3" x2="-2.25" y2="-2.3" width="0.05" layer="39"/>
<wire x1="-2.25" y1="-2.3" x2="-2.25" y2="1.55" width="0.05" layer="39"/>
<text x="-2.60418125" y="1.80288125" size="1.01763125" layer="25">&gt;NAME</text>
<text x="-2.6061" y="-3.60845" size="1.01838125" layer="27">&gt;VALUE</text>
<wire x1="-1.3" y1="1.3" x2="1.3" y2="1.3" width="0.127" layer="51"/>
<wire x1="1.3" y1="1.3" x2="1.3" y2="-1.3" width="0.127" layer="51"/>
<wire x1="1.3" y1="-1.3" x2="-1.3" y2="-1.3" width="0.127" layer="51"/>
<wire x1="-1.3" y1="-1.3" x2="-1.3" y2="1.3" width="0.127" layer="51"/>
<wire x1="-1.3" y1="1.3" x2="1.3" y2="1.3" width="0.127" layer="21"/>
<rectangle x1="-0.950159375" y1="-1.00016875" x2="0.95" y2="1.1" layer="41"/>
<wire x1="-1.3" y1="-1.3" x2="-0.67" y2="-1.3" width="0.127" layer="21"/>
<wire x1="1.3" y1="-1.3" x2="0.67" y2="-1.3" width="0.127" layer="21"/>
<smd name="2" x="0" y="-1.525" dx="1" dy="1.05" layer="1"/>
<smd name="1" x="-1.475" y="0" dx="1.05" dy="2.2" layer="1"/>
<smd name="3" x="1.475" y="0" dx="1.05" dy="2.2" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="U.FL-R-SMT-1(10)">
<wire x1="-1.397" y1="3.175" x2="0" y2="3.175" width="0.254" layer="94"/>
<wire x1="0" y1="3.175" x2="1.397" y2="3.175" width="0.254" layer="94"/>
<wire x1="1.397" y1="3.175" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.397" y2="3.175" width="0.254" layer="94"/>
<wire x1="0" y1="3.175" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-0.762" y1="-3.302" x2="0.762" y2="-3.302" width="0.254" layer="94"/>
<wire x1="-0.127" y1="-4.064" x2="0.254" y2="-4.064" width="0.254" layer="94"/>
<text x="-2.54058125" y="5.086940625" size="1.27303125" layer="95">&gt;NAME</text>
<text x="-2.66773125" y="-7.63458125" size="1.27435" layer="96">&gt;VALUE</text>
<pin name="GND" x="-2.54" y="-2.54" visible="off" length="short" direction="pas"/>
<pin name="SIG" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="U.FL-R-SMT-1(10)" prefix="J">
<description>U.FL Series 6 Ghz 50 Ohm Ultra-small SMT Coaxial Cable Receptacle</description>
<gates>
<gate name="G$1" symbol="U.FL-R-SMT-1(10)" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HRS_U.FL-R-SMT-1(10)">
<connects>
<connect gate="G$1" pin="GND" pad="1 3"/>
<connect gate="G$1" pin="SIG" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" U.FL Series 6 Ghz 50 Ohm Ultra-small SMT Coaxial Cable Receptacle "/>
<attribute name="MF" value="Hirose"/>
<attribute name="MP" value="U.FL-R-SMT-1_10_"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="LORAMODULE" library="RFM95W-868S2" deviceset="RFM95W-868S2" device=""/>
<part name="JP1" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-2X5" device="" package3d_urn="urn:adsk.eagle:package:22470/2"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="J1" library="U.FL-R-SMT-1_10_" deviceset="U.FL-R-SMT-1(10)" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="LORAMODULE" gate="G$1" x="25.4" y="33.02" smashed="yes">
<attribute name="NAME" x="10.1437" y="47.0049" size="1.7799" layer="95"/>
<attribute name="VALUE" x="10.135" y="15.2108" size="1.78091875" layer="96"/>
</instance>
<instance part="JP1" gate="A" x="17.78" y="73.66" smashed="yes">
<attribute name="NAME" x="11.43" y="81.915" size="1.778" layer="95"/>
<attribute name="VALUE" x="11.43" y="63.5" size="1.778" layer="96"/>
</instance>
<instance part="GND1" gate="1" x="38.1" y="66.04" smashed="yes">
<attribute name="VALUE" x="35.56" y="63.5" size="1.778" layer="96"/>
</instance>
<instance part="GND2" gate="1" x="48.26" y="12.7" smashed="yes">
<attribute name="VALUE" x="45.72" y="10.16" size="1.778" layer="96"/>
</instance>
<instance part="J1" gate="G$1" x="73.66" y="38.1" smashed="yes">
<attribute name="NAME" x="71.11941875" y="43.186940625" size="1.27303125" layer="95"/>
<attribute name="VALUE" x="70.99226875" y="30.46541875" size="1.27435" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="MOSI" class="0">
<segment>
<pinref part="JP1" gate="A" pin="1"/>
<wire x1="15.24" y1="78.74" x2="7.62" y2="78.74" width="0.1524" layer="91"/>
<label x="7.62" y="78.74" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="LORAMODULE" gate="G$1" pin="MOSI"/>
<wire x1="43.18" y1="30.48" x2="50.8" y2="30.48" width="0.1524" layer="91"/>
<label x="50.8" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="RESET_LORA" class="0">
<segment>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="15.24" y1="76.2" x2="7.62" y2="76.2" width="0.1524" layer="91"/>
<label x="7.62" y="76.2" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="LORAMODULE" gate="G$1" pin="RESET"/>
<wire x1="7.62" y1="35.56" x2="0" y2="35.56" width="0.1524" layer="91"/>
<label x="0" y="35.56" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="DIO2" class="0">
<segment>
<pinref part="JP1" gate="A" pin="5"/>
<wire x1="15.24" y1="73.66" x2="7.62" y2="73.66" width="0.1524" layer="91"/>
<label x="7.62" y="73.66" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="LORAMODULE" gate="G$1" pin="DIO2"/>
<wire x1="7.62" y1="20.32" x2="0" y2="20.32" width="0.1524" layer="91"/>
<label x="0" y="20.32" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="DIO1" class="0">
<segment>
<pinref part="JP1" gate="A" pin="7"/>
<wire x1="15.24" y1="71.12" x2="7.62" y2="71.12" width="0.1524" layer="91"/>
<label x="7.62" y="71.12" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="LORAMODULE" gate="G$1" pin="DIO1"/>
<wire x1="7.62" y1="22.86" x2="0" y2="22.86" width="0.1524" layer="91"/>
<label x="0" y="22.86" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="SCK" class="0">
<segment>
<pinref part="JP1" gate="A" pin="2"/>
<wire x1="22.86" y1="78.74" x2="30.48" y2="78.74" width="0.1524" layer="91"/>
<label x="30.48" y="78.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="LORAMODULE" gate="G$1" pin="SCK"/>
<wire x1="7.62" y1="40.64" x2="0" y2="40.64" width="0.1524" layer="91"/>
<label x="0" y="40.64" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="NSS" class="0">
<segment>
<pinref part="JP1" gate="A" pin="4"/>
<wire x1="22.86" y1="76.2" x2="30.48" y2="76.2" width="0.1524" layer="91"/>
<label x="30.48" y="76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="LORAMODULE" gate="G$1" pin="NSS"/>
<wire x1="7.62" y1="38.1" x2="0" y2="38.1" width="0.1524" layer="91"/>
<label x="0" y="38.1" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="JP1" gate="A" pin="6"/>
<wire x1="22.86" y1="73.66" x2="30.48" y2="73.66" width="0.1524" layer="91"/>
<label x="30.48" y="73.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="LORAMODULE" gate="G$1" pin="MISO"/>
<wire x1="7.62" y1="43.18" x2="0" y2="43.18" width="0.1524" layer="91"/>
<label x="0" y="43.18" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="JP1" gate="A" pin="10"/>
<wire x1="22.86" y1="68.58" x2="30.48" y2="68.58" width="0.1524" layer="91"/>
<label x="30.48" y="68.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="LORAMODULE" gate="G$1" pin="3_3V"/>
<wire x1="43.18" y1="43.18" x2="50.8" y2="43.18" width="0.1524" layer="91"/>
<label x="50.8" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="38.1" y1="68.58" x2="38.1" y2="71.12" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="8"/>
<wire x1="38.1" y1="71.12" x2="22.86" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LORAMODULE" gate="G$1" pin="GND@2"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="43.18" y1="20.32" x2="48.26" y2="20.32" width="0.1524" layer="91"/>
<wire x1="48.26" y1="20.32" x2="48.26" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIO0" class="0">
<segment>
<pinref part="JP1" gate="A" pin="9"/>
<wire x1="15.24" y1="68.58" x2="7.62" y2="68.58" width="0.1524" layer="91"/>
<label x="7.62" y="68.58" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="LORAMODULE" gate="G$1" pin="DIO0"/>
<wire x1="7.62" y1="25.4" x2="0" y2="25.4" width="0.1524" layer="91"/>
<label x="0" y="25.4" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="SIG"/>
<pinref part="LORAMODULE" gate="G$1" pin="ANT"/>
<wire x1="71.12" y1="38.1" x2="43.18" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
