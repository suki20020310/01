<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="ip9" top="conv_bn_relu">
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="true" ldflags="" mflags=""/>
    </Simulation>
    <files>
        <file name="../HLS/ip7/conv_bn_relu.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../HLS/ip7/conv_bn_relu.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../../../ip/ip6/test_conv_bn_relu.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../ip/ip6/conv_bn_relu.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../ip/ip6/conv_bn_relu.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

