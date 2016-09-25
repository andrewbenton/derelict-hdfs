module derelict.hdfs.hdfs;

public import derelict.hdfs.types;
public import derelict.hdfs.functions;

import derelict.util.loader;

private import derelict.util.system;

enum libNames = "libhdfs.so, libhdfs.so.0.0.0";

class DerelictHDFSLoader : SharedLibLoader
{
    public this()
    {
        super(libNames);
    }

    protected override void configureMinimumVersion(SharedLibVersion minVersion)
    {

    }

    protected override void loadSymbols()
    {
        bindFunc(cast(void**)&hdfsFileIsOpenForRead, "hdfsFileIsOpenForRead");
        bindFunc(cast(void**)&hdfsFileIsOpenForWrite, "hdfsFileIsOpenForWrite");
        bindFunc(cast(void**)&hdfsFileGetReadStatistics, "hdfsFileGetReadStatistics");
        bindFunc(cast(void**)&hdfsReadStatisticsGetRemoteBytesRead, "hdfsReadStatisticsGetRemoteBytesRead");
        //bindFunc(cast(void**)&hdfsFileClearReadStatistics, "hdfsFileClearReadStatistics");
        //bindFunc(cast(void**)&hdfsFileReadStatistics, "hdfsFileReadStatistics");
        bindFunc(cast(void**)&hdfsConnectAsUser, "hdfsConnectAsUser");
        bindFunc(cast(void**)&hdfsConnect, "hdfsConnect");
        bindFunc(cast(void**)&hdfsConnectAsUserNewInstance, "hdfsConnectAsUserNewInstance");
        bindFunc(cast(void**)&hdfsConnectNewInstance, "hdfsConnectNewInstance");
        bindFunc(cast(void**)&hdfsBuilderConnect, "hdfsBuilderConnect");
        bindFunc(cast(void**)&hdfsNewBuilder, "hdfsNewBuilder");
        bindFunc(cast(void**)&hdfsBuilderSetForceNewInstance, "hdfsBuilderSetForceNewInstance");
        bindFunc(cast(void**)&hdfsBuilderSetNameNode, "hdfsBuilderSetNameNode");
        bindFunc(cast(void**)&hdfsBuilderSetNameNodePort, "hdfsBuilderSetNameNodePort");
        bindFunc(cast(void**)&hdfsBuilderSetUserName, "hdfsBuilderSetUserName");
        bindFunc(cast(void**)&hdfsBuilderSetKerbTicketCachePath, "hdfsBuilderSetKerbTicketCachePath");
        bindFunc(cast(void**)&hdfsFreeBuilder, "hdfsFreeBuilder");
        bindFunc(cast(void**)&hdfsBuilderConfSetStr, "hdfsBuilderConfSetStr");
        bindFunc(cast(void**)&hdfsConfGetStr, "hdfsConfGetStr");
        bindFunc(cast(void**)&hdfsConfGetInt, "hdfsConfGetInt");
        bindFunc(cast(void**)&hdfsConfStrFree, "hdfsConfStrFree");
        bindFunc(cast(void**)&hdfsDisconnect, "hdfsDisconnect");
        bindFunc(cast(void**)&hdfsOpenFile, "hdfsOpenFile");
        //bindFunc(cast(void**)&hdfsStreamBuilderAlloc, "hdfsStreamBuilderAlloc");
        //bindFunc(cast(void**)&hdfsStreamBuilderFree, "hdfsStreamBuilderFree");
        //bindFunc(cast(void**)&hdfsStreamBuilderSetBufferSize, "hdfsStreamBuilderSetBufferSize");
        //bindFunc(cast(void**)&hdfsStreamBuilderSetReplication, "hdfsStreamBuilderSetReplication");
        //bindFunc(cast(void**)&hdfsStreamBuilderSetDefaultBlockSize, "hdfsStreamBuilderSetDefaultBlockSize");
        //bindFunc(cast(void**)&hdfsStreamBuilderBuild, "hdfsStreamBuilderBuild");
        //bindFunc(cast(void**)&hdfsUnbufferFile, "hdfsUnbufferFile");
        bindFunc(cast(void**)&hdfsCloseFile, "hdfsCloseFile");
        bindFunc(cast(void**)&hdfsExists, "hdfsExists");
        bindFunc(cast(void**)&hdfsSeek, "hdfsSeek");
        bindFunc(cast(void**)&hdfsTell, "hdfsTell");
        bindFunc(cast(void**)&hdfsRead, "hdfsRead");
        bindFunc(cast(void**)&hdfsPread, "hdfsPread");
        bindFunc(cast(void**)&hdfsWrite, "hdfsWrite");
        bindFunc(cast(void**)&hdfsFlush, "hdfsFlush");
        bindFunc(cast(void**)&hdfsHFlush, "hdfsHFlush");
        bindFunc(cast(void**)&hdfsHSync, "hdfsHSync");
        bindFunc(cast(void**)&hdfsAvailable, "hdfsAvailable");
        bindFunc(cast(void**)&hdfsCopy, "hdfsCopy");
        bindFunc(cast(void**)&hdfsMove, "hdfsMove");
        bindFunc(cast(void**)&hdfsDelete, "hdfsDelete");
        bindFunc(cast(void**)&hdfsRename, "hdfsRename");
        bindFunc(cast(void**)&hdfsGetWorkingDirectory, "hdfsGetWorkingDirectory");
        bindFunc(cast(void**)&hdfsSetWorkingDirectory, "hdfsSetWorkingDirectory");
        bindFunc(cast(void**)&hdfsCreateDirectory, "hdfsCreateDirectory");
        bindFunc(cast(void**)&hdfsSetReplication, "hdfsSetReplication");
        bindFunc(cast(void**)&hdfsListDirectory, "hdfsListDirectory");
        bindFunc(cast(void**)&hdfsGetPathInfo, "hdfsGetPathInfo");
        bindFunc(cast(void**)&hdfsFreeFileInfo, "hdfsFreeFileInfo");
        //bindFunc(cast(void**)&hdfsFileIsEncrypted, "hdfsFileIsEncrypted");
        bindFunc(cast(void**)&hdfsGetHosts, "hdfsGetHosts");
        bindFunc(cast(void**)&hdfsFreeHosts, "hdfsFreeHosts");
        bindFunc(cast(void**)&hdfsGetDefaultBlockSize, "hdfsGetDefaultBlockSize");
        bindFunc(cast(void**)&hdfsGetDefaultBlockSizeAtPath, "hdfsGetDefaultBlockSizeAtPath");
        bindFunc(cast(void**)&hdfsGetCapacity, "hdfsGetCapacity");
        bindFunc(cast(void**)&hdfsGetUsed, "hdfsGetUsed");
        bindFunc(cast(void**)&hdfsChown, "hdfsChown");
        bindFunc(cast(void**)&hdfsChmod, "hdfsChmod");
        //bindFunc(cast(void**)&hdfsUptime, "hdfsUptime");
        bindFunc(cast(void**)&hadoopRzOptionsAlloc, "hadoopRzOptionsAlloc");
        bindFunc(cast(void**)&hadoopRzOptionsSetSkipChecksum, "hadoopRzOptionsSetSkipChecksum");
        bindFunc(cast(void**)&hadoopRzOptionsSetByteBufferPool, "hadoopRzOptionsSetByteBufferPool");
        bindFunc(cast(void**)&hadoopRzOptionsFree, "hadoopRzOptionsFree");
        bindFunc(cast(void**)&hadoopReadZero, "hadoopReadZero");
        bindFunc(cast(void**)&hadoopRzBufferLength, "hadoopRzBufferLength");
        bindFunc(cast(void**)&hadoopRzBufferGet, "hadoopRzBufferGet");
        bindFunc(cast(void**)&hadoopRzBufferFree, "hadoopRzBufferFree");
    }
}

__gshared DerelictHDFSLoader DerelictHDFS;

shared static this()
{
    DerelictHDFS = new DerelictHDFSLoader();
}
