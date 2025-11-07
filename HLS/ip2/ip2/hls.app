<project xmlns="com.autoesl.autopilot.project" name="ip2" top="shufflenet_block">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags="" clean="true" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <files xmlns="">
        <file name="../../../../ip/ip2/test_channel_shuffle.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../ip/ip2/channel_shuffle.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../../ip/ip2/channel_shuffle.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

