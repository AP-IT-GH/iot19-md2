<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
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
<library name="con-lstb" urn="urn:adsk.eagle:library:162">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA03-1" urn="urn:adsk.eagle:footprint:8281/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.81" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="-3.81" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="MA03-1" urn="urn:adsk.eagle:package:8339/1" type="box" library_version="2">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA03-1"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MA03-1" urn="urn:adsk.eagle:symbol:8280/1" library_version="2">
<wire x1="3.81" y1="-5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-1.27" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA03-1" urn="urn:adsk.eagle:component:8376/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA03-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA03-1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8339/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="48" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SL876Q5A001T001000">
<packages>
<package name="XCVR_SL876Q5A001T001000">
<wire x1="-5.9" y1="5" x2="-5.9" y2="5.5" width="0.127" layer="21"/>
<wire x1="-5.9" y1="5.5" x2="5.9" y2="5.5" width="0.127" layer="21"/>
<wire x1="5.9" y1="5.5" x2="5.9" y2="4.9" width="0.127" layer="21"/>
<wire x1="-5.9" y1="-4.9" x2="-5.9" y2="-5.5" width="0.127" layer="21"/>
<wire x1="-5.9" y1="-5.5" x2="5.9" y2="-5.5" width="0.127" layer="21"/>
<wire x1="5.9" y1="-5.5" x2="5.9" y2="-4.9" width="0.127" layer="21"/>
<circle x="-6.4" y="5" radius="0.1" width="0.2" layer="21"/>
<circle x="-6.4" y="5" radius="0.1" width="0.2" layer="51"/>
<wire x1="-5.9" y1="5.5" x2="5.9" y2="5.5" width="0.127" layer="51"/>
<wire x1="5.9" y1="5.5" x2="5.9" y2="-5.5" width="0.127" layer="51"/>
<wire x1="5.9" y1="-5.5" x2="-5.9" y2="-5.5" width="0.127" layer="51"/>
<wire x1="-5.9" y1="-5.5" x2="-5.9" y2="5.5" width="0.127" layer="51"/>
<wire x1="-6.5" y1="5.75" x2="6.5" y2="5.75" width="0.05" layer="39"/>
<wire x1="6.5" y1="5.75" x2="6.5" y2="-5.75" width="0.05" layer="39"/>
<wire x1="6.5" y1="-5.75" x2="-6.5" y2="-5.75" width="0.05" layer="39"/>
<wire x1="-6.5" y1="-5.75" x2="-6.5" y2="5.75" width="0.05" layer="39"/>
<text x="-6.363940625" y="5.72755" size="0.610940625" layer="25">&gt;NAME</text>
<text x="-6.3807" y="-6.3807" size="0.612546875" layer="27">&gt;VALUE</text>
<smd name="1" x="-5.7" y="4.4" dx="1.1" dy="0.6" layer="1"/>
<smd name="2" x="-5.7" y="3.6" dx="1.1" dy="0.6" layer="1"/>
<smd name="3" x="-5.7" y="2.8" dx="1.1" dy="0.6" layer="1"/>
<smd name="4" x="-5.7" y="2" dx="1.1" dy="0.6" layer="1"/>
<smd name="5" x="-5.7" y="1.2" dx="1.1" dy="0.6" layer="1"/>
<smd name="6" x="-5.7" y="0.4" dx="1.1" dy="0.6" layer="1"/>
<smd name="7" x="-5.7" y="-0.4" dx="1.1" dy="0.6" layer="1"/>
<smd name="8" x="-5.7" y="-1.2" dx="1.1" dy="0.6" layer="1"/>
<smd name="9" x="-5.7" y="-2" dx="1.1" dy="0.6" layer="1"/>
<smd name="10" x="-5.7" y="-2.8" dx="1.1" dy="0.6" layer="1"/>
<smd name="11" x="-5.7" y="-3.6" dx="1.1" dy="0.6" layer="1"/>
<smd name="12" x="-5.7" y="-4.4" dx="1.1" dy="0.6" layer="1"/>
<smd name="13" x="5.7" y="-4.4" dx="1.1" dy="0.6" layer="1" rot="R180"/>
<smd name="14" x="5.7" y="-3.6" dx="1.1" dy="0.6" layer="1" rot="R180"/>
<smd name="15" x="5.7" y="-2.8" dx="1.1" dy="0.6" layer="1" rot="R180"/>
<smd name="16" x="5.7" y="-2" dx="1.1" dy="0.6" layer="1" rot="R180"/>
<smd name="17" x="5.7" y="-1.2" dx="1.1" dy="0.6" layer="1" rot="R180"/>
<smd name="18" x="5.7" y="-0.4" dx="1.1" dy="0.6" layer="1" rot="R180"/>
<smd name="19" x="5.7" y="0.4" dx="1.1" dy="0.6" layer="1" rot="R180"/>
<smd name="20" x="5.7" y="1.2" dx="1.1" dy="0.6" layer="1" rot="R180"/>
<smd name="21" x="5.7" y="2" dx="1.1" dy="0.6" layer="1" rot="R180"/>
<smd name="22" x="5.7" y="2.8" dx="1.1" dy="0.6" layer="1" rot="R180"/>
<smd name="23" x="5.7" y="3.6" dx="1.1" dy="0.6" layer="1" rot="R180"/>
<smd name="24" x="5.7" y="4.4" dx="1.1" dy="0.6" layer="1" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="SL876Q5A001T001000">
<wire x1="-20.32" y1="20.32" x2="20.32" y2="20.32" width="0.254" layer="94"/>
<wire x1="20.32" y1="20.32" x2="20.32" y2="-20.32" width="0.254" layer="94"/>
<wire x1="20.32" y1="-20.32" x2="-20.32" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-20.32" x2="-20.32" y2="20.32" width="0.254" layer="94"/>
<text x="-20.4085" y="21.0464" size="1.6837" layer="95">&gt;NAME</text>
<text x="-20.4159" y="-22.9678" size="1.684309375" layer="96">&gt;VALUE</text>
<pin name="1V8" x="25.4" y="17.78" length="middle" direction="pwr" rot="R180"/>
<pin name="GND" x="25.4" y="-17.78" length="middle" direction="pwr" rot="R180"/>
<pin name="EXT_ANT/RF_IN" x="-25.4" y="0" length="middle" direction="in"/>
<pin name="ON-OFF" x="-25.4" y="17.78" length="middle" direction="in"/>
<pin name="NRESET" x="-25.4" y="15.24" length="middle" direction="in"/>
<pin name="BOOT_SELECT" x="-25.4" y="12.7" length="middle" direction="in"/>
<pin name="GPIO6" x="25.4" y="-7.62" length="middle" rot="R180"/>
<pin name="GPIO7" x="25.4" y="-5.08" length="middle" rot="R180"/>
<pin name="INT/NEXT/ANT_ENABLE" x="-25.4" y="2.54" length="middle" direction="in"/>
<pin name="SYSTEM_ON" x="25.4" y="12.7" length="middle" direction="out" rot="R180"/>
<pin name="LNA_ENABLE" x="-25.4" y="5.08" length="middle" direction="out"/>
<pin name="PPS" x="25.4" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="TX" x="-25.4" y="-7.62" length="middle" direction="out"/>
<pin name="RX" x="-25.4" y="-5.08" length="middle" direction="in"/>
<pin name="GPIOA" x="25.4" y="0" length="middle" direction="out" rot="R180"/>
<pin name="SCL/RX1" x="-25.4" y="-12.7" length="middle" function="clk"/>
<pin name="SDA/TX1" x="-25.4" y="-15.24" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SL876Q5A001T001000" prefix="U">
<description>Sl876q5-a Gnss Embedded Module</description>
<gates>
<gate name="G$1" symbol="SL876Q5A001T001000" x="0" y="0"/>
</gates>
<devices>
<device name="" package="XCVR_SL876Q5A001T001000">
<connects>
<connect gate="G$1" pin="1V8" pad="18"/>
<connect gate="G$1" pin="BOOT_SELECT" pad="4"/>
<connect gate="G$1" pin="EXT_ANT/RF_IN" pad="11"/>
<connect gate="G$1" pin="GND" pad="2 3 5 10 12 13 20 24"/>
<connect gate="G$1" pin="GPIO6" pad="16"/>
<connect gate="G$1" pin="GPIO7" pad="6"/>
<connect gate="G$1" pin="GPIOA" pad="23"/>
<connect gate="G$1" pin="INT/NEXT/ANT_ENABLE" pad="14"/>
<connect gate="G$1" pin="LNA_ENABLE" pad="9"/>
<connect gate="G$1" pin="NRESET" pad="1"/>
<connect gate="G$1" pin="ON-OFF" pad="7"/>
<connect gate="G$1" pin="PPS" pad="8"/>
<connect gate="G$1" pin="RX" pad="15"/>
<connect gate="G$1" pin="SCL/RX1" pad="19"/>
<connect gate="G$1" pin="SDA/TX1" pad="21"/>
<connect gate="G$1" pin="SYSTEM_ON" pad="22"/>
<connect gate="G$1" pin="TX" pad="17"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" Sl876q5-a Gnss Embedded Module "/>
<attribute name="MF" value="Telit"/>
<attribute name="MP" value="SL876Q5A001T001000"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="1623401-1">
<packages>
<package name="RESC2012X65N">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.69" y1="0.96" x2="1.69" y2="0.96" width="0.05" layer="39"/>
<wire x1="1.69" y1="0.96" x2="1.69" y2="-0.96" width="0.05" layer="39"/>
<wire x1="1.69" y1="-0.96" x2="-1.69" y2="-0.96" width="0.05" layer="39"/>
<wire x1="-1.69" y1="-0.96" x2="-1.69" y2="0.96" width="0.05" layer="39"/>
<wire x1="-1.08" y1="0.7" x2="1.08" y2="0.7" width="0.127" layer="51"/>
<wire x1="-1.08" y1="-0.7" x2="1.08" y2="-0.7" width="0.127" layer="51"/>
<text x="-1.665809375" y="1.461909375" size="0.6209625" layer="25">&gt;NAME</text>
<text x="-1.66868125" y="-1.9938" size="0.620890625" layer="27">&gt;VALUE</text>
<wire x1="1.08" y1="0.7" x2="1.08" y2="-0.7" width="0.127" layer="51"/>
<wire x1="-1.08" y1="0.7" x2="-1.08" y2="-0.7" width="0.127" layer="51"/>
<wire x1="-1" y1="0.89" x2="1" y2="0.89" width="0.127" layer="21"/>
<wire x1="-1" y1="-0.89" x2="1" y2="-0.89" width="0.127" layer="21"/>
<smd name="1" x="-0.935" y="0" dx="1" dy="1.42" layer="1" roundness="25"/>
<smd name="2" x="0.935" y="0" dx="1" dy="1.42" layer="1" roundness="25"/>
</package>
</packages>
<symbols>
<symbol name="1623401-1">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.2032" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.2032" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.2032" layer="94"/>
<text x="-3.81243125" y="1.499559375" size="1.77913125" layer="95">&gt;NAME</text>
<text x="-3.81005" y="-3.302040625" size="1.77801875" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1623401-1" prefix="R">
<description>CRG0805 ZEROHM</description>
<gates>
<gate name="G$1" symbol="1623401-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESC2012X65N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="COMMENT" value="1623401-1"/>
<attribute name="DESCRIPTION" value=" Res Thick Film 0805 0 Ohm Molded SMD SMD T/R "/>
<attribute name="EU_ROHS_COMPLIANCE" value="Compliant with Exemptions"/>
<attribute name="MF" value="TE Connectivity"/>
<attribute name="MP" value="1623401-1"/>
<attribute name="PACKAGE" value="0805"/>
<attribute name="POWER_RATING" value=".125 W"/>
<attribute name="PRICE" value="None"/>
<attribute name="RESISTANCE" value="0 "/>
<attribute name="TE_PURCHASE_URL" value="https://www.te.com/usa-en/product-1623401-1.html?te_bu=Cor&amp;te_type=disp&amp;te_campaign=seda_glo_cor-seda-global-disp-prtnr-fy19-seda-model-bom-cta_sma-317_1&amp;elqCampaignId=32493"/>
<attribute name="TOLERANCE" value="0%"/>
<attribute name="VOLTAGE_RATING" value="150 V"/>
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
<part name="SV1" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA03-1" device="" package3d_urn="urn:adsk.eagle:package:8339/1"/>
<part name="U1" library="SL876Q5A001T001000" deviceset="SL876Q5A001T001000" device=""/>
<part name="R1" library="1623401-1" deviceset="1623401-1" device="" value="100"/>
<part name="R2" library="1623401-1" deviceset="1623401-1" device="" value="120"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-12.7" y="30.48" size="1.016" layer="94">100Ω</text>
<text x="-12.7" y="5.08" size="1.016" layer="94">120Ω</text>
</plain>
<instances>
<instance part="SV1" gate="G$1" x="-48.26" y="35.56" smashed="yes">
<attribute name="VALUE" x="-49.53" y="27.94" size="1.778" layer="96"/>
<attribute name="NAME" x="-49.53" y="41.402" size="1.778" layer="95"/>
</instance>
<instance part="U1" gate="G$1" x="38.1" y="25.4" smashed="yes">
<attribute name="NAME" x="17.6915" y="46.4464" size="1.6837" layer="95"/>
<attribute name="VALUE" x="17.6841" y="2.4322" size="1.684309375" layer="96"/>
</instance>
<instance part="R1" gate="G$1" x="-15.24" y="30.48" smashed="yes" rot="R90">
<attribute name="NAME" x="-16.739559375" y="26.66756875" size="1.77913125" layer="95" rot="R90"/>
</instance>
<instance part="R2" gate="G$1" x="-15.24" y="5.08" smashed="yes" rot="R90">
<attribute name="NAME" x="-16.739559375" y="1.26756875" size="1.77913125" layer="95" rot="R90"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="TX" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="1"/>
<wire x1="-40.64" y1="33.02" x2="-33.02" y2="33.02" width="0.1524" layer="91"/>
<label x="-33.02" y="33.02" size="1.016" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="TX"/>
<label x="7.62" y="17.78" size="1.016" layer="95" rot="R180" xref="yes"/>
<wire x1="12.7" y1="17.78" x2="7.62" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="2"/>
<wire x1="-40.64" y1="35.56" x2="-25.4" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="35.56" x2="-25.4" y2="-2.54" width="0.1524" layer="91"/>
<label x="-25.4" y="-2.54" size="1.016" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="63.5" y1="7.62" x2="71.12" y2="7.62" width="0.1524" layer="91"/>
<wire x1="71.12" y1="7.62" x2="71.12" y2="-2.54" width="0.1524" layer="91"/>
<label x="71.12" y="-2.54" size="1.016" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<wire x1="-15.24" y1="0" x2="-15.24" y2="-2.54" width="0.1524" layer="91"/>
<label x="-15.24" y="-2.54" size="1.016" layer="95" rot="R270" xref="yes"/>
<pinref part="R2" gate="G$1" pin="1"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="3"/>
<wire x1="-40.64" y1="38.1" x2="-33.02" y2="38.1" width="0.1524" layer="91"/>
<label x="-33.02" y="38.1" size="1.016" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="-15.24" y1="35.56" x2="-15.24" y2="38.1" width="0.1524" layer="91"/>
<label x="-15.24" y="38.1" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="VIN" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="1V8"/>
<wire x1="63.5" y1="43.18" x2="68.58" y2="43.18" width="0.1524" layer="91"/>
<label x="68.58" y="43.18" size="1.016" layer="95" xref="yes"/>
</segment>
<segment>
<wire x1="-15.24" y1="25.4" x2="-15.24" y2="17.78" width="0.1524" layer="91"/>
<junction x="-15.24" y="17.78"/>
<wire x1="-15.24" y1="17.78" x2="-15.24" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="17.78" x2="-7.62" y2="17.78" width="0.1524" layer="91"/>
<label x="-7.62" y="17.78" size="1.016" layer="95" xref="yes"/>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="R2" gate="G$1" pin="2"/>
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
