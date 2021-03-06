@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  FlinkProjectF1 startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and FLINK_PROJECT_F1_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Dlog4j.configuration=log4j.properties"

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\FlinkProjectF1-0.1-SNAPSHOT.jar;%APP_HOME%\lib\flink-streaming-java_2.11-1.10.0.jar;%APP_HOME%\lib\flink-clients_2.11-1.10.0.jar;%APP_HOME%\lib\flink-optimizer_2.11-1.10.0.jar;%APP_HOME%\lib\flink-runtime_2.11-1.10.0.jar;%APP_HOME%\lib\flink-java-1.10.0.jar;%APP_HOME%\lib\slf4j-log4j12-1.7.7.jar;%APP_HOME%\lib\log4j-1.2.17.jar;%APP_HOME%\lib\flink-connector-kafka_2.11-1.10.0.jar;%APP_HOME%\lib\flink-hadoop-fs-1.10.0.jar;%APP_HOME%\lib\flink-core-1.10.0.jar;%APP_HOME%\lib\flink-shaded-asm-7-7.1-9.0.jar;%APP_HOME%\lib\commons-lang3-3.3.2.jar;%APP_HOME%\lib\commons-math3-3.5.jar;%APP_HOME%\lib\kafka-clients-2.2.0.jar;%APP_HOME%\lib\flink-annotations-1.10.0.jar;%APP_HOME%\lib\akka-slf4j_2.11-2.5.21.jar;%APP_HOME%\lib\grizzled-slf4j_2.11-1.3.2.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\jsr305-1.3.9.jar;%APP_HOME%\lib\flink-connector-kafka-base_2.11-1.10.0.jar;%APP_HOME%\lib\flink-metrics-core-1.10.0.jar;%APP_HOME%\lib\flink-queryable-state-client-java-1.10.0.jar;%APP_HOME%\lib\force-shading-1.10.0.jar;%APP_HOME%\lib\flink-shaded-guava-18.0-9.0.jar;%APP_HOME%\lib\kryo-2.24.0.jar;%APP_HOME%\lib\commons-collections-3.2.2.jar;%APP_HOME%\lib\commons-compress-1.18.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\flink-shaded-netty-4.1.39.Final-9.0.jar;%APP_HOME%\lib\flink-shaded-jackson-2.10.1-9.0.jar;%APP_HOME%\lib\commons-cli-1.3.1.jar;%APP_HOME%\lib\javassist-3.24.0-GA.jar;%APP_HOME%\lib\scala-library-2.11.12.jar;%APP_HOME%\lib\akka-stream_2.11-2.5.21.jar;%APP_HOME%\lib\akka-actor_2.11-2.5.21.jar;%APP_HOME%\lib\akka-protobuf_2.11-2.5.21.jar;%APP_HOME%\lib\scopt_2.11-3.5.0.jar;%APP_HOME%\lib\snappy-java-1.1.7.2.jar;%APP_HOME%\lib\chill_2.11-0.7.6.jar;%APP_HOME%\lib\lz4-java-1.5.0.jar;%APP_HOME%\lib\zstd-jni-1.3.8-1.jar;%APP_HOME%\lib\minlog-1.2.jar;%APP_HOME%\lib\objenesis-2.1.jar;%APP_HOME%\lib\config-1.3.3.jar;%APP_HOME%\lib\scala-java8-compat_2.11-0.7.0.jar;%APP_HOME%\lib\reactive-streams-1.0.2.jar;%APP_HOME%\lib\ssl-config-core_2.11-0.3.7.jar;%APP_HOME%\lib\chill-java-0.7.6.jar;%APP_HOME%\lib\scala-parser-combinators_2.11-1.1.1.jar

@rem Execute FlinkProjectF1
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %FLINK_PROJECT_F1_OPTS%  -classpath "%CLASSPATH%" org.myamith.FlinkProjectF1.StreamingJob %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable FLINK_PROJECT_F1_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%FLINK_PROJECT_F1_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
