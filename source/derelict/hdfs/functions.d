module derelict.hdfs.functions;

import derelict.hdfs.types;

extern(C) @nogc nothrow
{
    alias da_hdfsFileIsOpenForRead = int function(hdfsFile);
    alias da_hdfsFileIsOpenForWrite = int function(hdfsFile);
    alias da_hdfsFileGetReadStatistics = int function(hdfsFile, hdfsReadStatistics**);
    alias da_hdfsReadStatisticsGetRemoteBytesRead = long function(const hdfsReadStatistics*);
    //alias da_hdfsFileClearReadStatistics = int function(hdfsFile);
    //alias da_hdfsFileReadStatistics = void function(hdfsReadStatistics*);
    alias da_hdfsConnectAsUser = hdfsFS function(const char*, tPort, const char*);
    alias da_hdfsConnect = hdfsFS function(const char*, tPort);
    alias da_hdfsConnectAsUserNewInstance = hdfsFS function(const char*, tPort, const char*);
    alias da_hdfsConnectNewInstance = hdfsFS function(const char*, tPort);
    alias da_hdfsBuilderConnect = hdfsFS function(hdfsBuilder);
    alias da_hdfsNewBuilder = hdfsBuilder function();
    alias da_hdfsBuilderSetForceNewInstance = void function(hdfsBuilder);
    alias da_hdfsBuilderSetNameNode = void function(hdfsBuilder, const char*);
    alias da_hdfsBuilderSetNameNodePort = void function(hdfsBuilder, tPort);
    alias da_hdfsBuilderSetUserName = void function(hdfsBuilder, const char*);
    alias da_hdfsBuilderSetKerbTicketCachePath = void function(hdfsBuilder, const char*);
    alias da_hdfsFreeBuilder = void function(hdfsBuilder);
    alias da_hdfsBuilderConfSetStr = int function(hdfsBuilder, const char*, const char*);
    alias da_hdfsConfGetStr = int function(const char*, char**);
    alias da_hdfsConfGetInt = int function(const char*, int*);
    alias da_hdfsConfStrFree = void function(char*);
    alias da_hdfsDisconnect = int function(hdfsFS);
    alias da_hdfsOpenFile = hdfsFile function(hdfsFS, const char*, int, int, short, tSize);
    //alias da_hdfsStreamBuilderAlloc = hdfsStreamBuilder function(hdfsFS, const char*, int);
    //alias da_hdfsStreamBuilderFree = void function(hdfsStreamBuilder);
    //alias da_hdfsStreamBuilderSetBufferSize = int function(hdfsStreamBuilder, int);
    //alias da_hdfsStreamBuilderSetReplication = int function(hdfsStreamBuilder, short);
    //alias da_hdfsStreamBuilderSetDefaultBlockSize = int function(hdfsStreamBuilder, long defaultBlockSize);
    //alias da_hdfsStreamBuilderBuild = hdfsFile function(hdfsStreamBuilder);
    alias da_hdfsUnbufferFile = int function(hdfsFile);
    alias da_hdfsCloseFile = int function(hdfsFS, hdfsFile);
    alias da_hdfsExists = int function(hdfsFS, const char*);
    alias da_hdfsSeek = int function(hdfsFS, hdfsFile, tOffset);
    alias da_hdfsTell = tOffset function(hdfsFS, hdfsFile);
    alias da_hdfsRead = tSize function(hdfsFS, hdfsFile, void*, tSize);
    alias da_hdfsPread = tSize function(hdfsFS, hdfsFile, tOffset, void*, tSize);
    alias da_hdfsWrite = tSize function(hdfsFS, hdfsFile, const void*, tSize);
    alias da_hdfsFlush = int function(hdfsFS, hdfsFile);
    alias da_hdfsHFlush = int function(hdfsFS, hdfsFile);
    alias da_hdfsHSync = int function(hdfsFS, hdfsFile);
    alias da_hdfsAvailable = int function(hdfsFS, hdfsFile);
    alias da_hdfsCopy = int function(hdfsFS, const char*, hdfsFS, const char*);
    alias da_hdfsMove = int function(hdfsFS, const char*, hdfsFS, const char*);
    alias da_hdfsDelete = int function(hdfsFS, const char*, int recursive);
    alias da_hdfsRename = int function(hdfsFS, const char*, const char*);
    alias da_hdfsGetWorkingDirectory = char* function(hdfsFS, char*, size_t);
    alias da_hdfsSetWorkingDirectory = int function(hdfsFS, const char*);
    alias da_hdfsCreateDirectory = int function(hdfsFS, const char*);
    alias da_hdfsSetReplication = int function(hdfsFS, const char*, short);
    alias da_hdfsListDirectory = hdfsFileInfo* function(hdfsFS, const char*, int*);
    alias da_hdfsGetPathInfo= hdfsFileInfo* function(hdfsFS, const char*);
    alias da_hdfsFreeFileInfo = void function(hdfsFileInfo*, int);
    alias da_hdfsFileIsEncrypted = int function(hdfsFileInfo*);
    alias da_hdfsGetHosts = char*** function(hdfsFS, const char*, tOffset, tOffset);
    alias da_hdfsFreeHosts = void function(char***);
    alias da_hdfsGetDefaultBlockSize = tOffset function(hdfsFS);
    alias da_hdfsGetDefaultBlockSizeAtPath = tOffset function(hdfsFS, const char*);
    alias da_hdfsGetCapacity = tOffset function(hdfsFS);
    alias da_hdfsGetUsed = tOffset function(hdfsFS);
    alias da_hdfsChown = int function(hdfsFS, const char*, const char*, const char*);
    alias da_hdfsChmod = int function(hdfsFS, const char*, const char*);
    //alias da_hdfsUptime = int function(hdfsFS, const char*, tTime, tTime);
    alias da_hadoopRzOptionsAlloc = hadoopRzOptions function();
    alias da_hadoopRzOptionsSetSkipChecksum = int function(hadoopRzOptions, int);
    alias da_hadoopRzOptionsSetByteBufferPool = int function(hadoopRzOptions, const char*);
    alias da_hadoopRzOptionsFree = void function(hadoopRzOptions);
    alias da_hadoopReadZero = hadoopRzBuffer function(hdfsFile, hadoopRzOptions, int);
    alias da_hadoopRzBufferLength = int function(const hadoopRzBuffer);
    alias da_hadoopRzBufferGet = void* function(const hadoopRzBuffer);
    alias da_hadoopRzBufferFree = void function(hdfsFile, hadoopRzBuffer);
}

__gshared
{
    da_hdfsFileIsOpenForRead hdfsFileIsOpenForRead;
    da_hdfsFileIsOpenForWrite hdfsFileIsOpenForWrite;
    da_hdfsFileGetReadStatistics hdfsFileGetReadStatistics;
    da_hdfsReadStatisticsGetRemoteBytesRead hdfsReadStatisticsGetRemoteBytesRead;
    //da_hdfsFileClearReadStatistics hdfsFileClearReadStatistics;
    //da_hdfsFileReadStatistics hdfsFileReadStatistics;
    da_hdfsConnectAsUser hdfsConnectAsUser;
    da_hdfsConnect hdfsConnect;
    da_hdfsConnectAsUserNewInstance hdfsConnectAsUserNewInstance;
    da_hdfsConnectNewInstance hdfsConnectNewInstance;
    da_hdfsBuilderConnect hdfsBuilderConnect;
    da_hdfsNewBuilder hdfsNewBuilder;
    da_hdfsBuilderSetForceNewInstance hdfsBuilderSetForceNewInstance;
    da_hdfsBuilderSetNameNode hdfsBuilderSetNameNode;
    da_hdfsBuilderSetNameNodePort hdfsBuilderSetNameNodePort;
    da_hdfsBuilderSetUserName hdfsBuilderSetUserName;
    da_hdfsBuilderSetKerbTicketCachePath hdfsBuilderSetKerbTicketCachePath;
    da_hdfsFreeBuilder hdfsFreeBuilder;
    da_hdfsBuilderConfSetStr hdfsBuilderConfSetStr;
    da_hdfsConfGetStr hdfsConfGetStr;
    da_hdfsConfGetInt hdfsConfGetInt;
    da_hdfsConfStrFree hdfsConfStrFree;
    da_hdfsDisconnect hdfsDisconnect;
    da_hdfsOpenFile hdfsOpenFile;
    //da_hdfsStreamBuilderAlloc hdfsStreamBuilderAlloc;
    //da_hdfsStreamBuilderFree hdfsStreamBuilderFree;
    //da_hdfsStreamBuilderSetBufferSize hdfsStreamBuilderSetBufferSize;
    //da_hdfsStreamBuilderSetReplication hdfsStreamBuilderSetReplication;
    //da_hdfsStreamBuilderSetDefaultBlockSize hdfsStreamBuilderSetDefaultBlockSize;
    //da_hdfsStreamBuilderBuild hdfsStreamBuilderBuild;
    da_hdfsUnbufferFile hdfsUnbufferFile;
    da_hdfsCloseFile hdfsCloseFile;
    da_hdfsExists hdfsExists;
    da_hdfsSeek hdfsSeek;
    da_hdfsTell hdfsTell;
    da_hdfsRead hdfsRead;
    da_hdfsPread hdfsPread;
    da_hdfsWrite hdfsWrite;
    da_hdfsFlush hdfsFlush;
    da_hdfsHFlush hdfsHFlush;
    da_hdfsHSync hdfsHSync;
    da_hdfsAvailable hdfsAvailable;
    da_hdfsCopy hdfsCopy;
    da_hdfsMove hdfsMove;
    da_hdfsDelete hdfsDelete;
    da_hdfsRename hdfsRename;
    da_hdfsGetWorkingDirectory hdfsGetWorkingDirectory;
    da_hdfsSetWorkingDirectory hdfsSetWorkingDirectory;
    da_hdfsCreateDirectory hdfsCreateDirectory;
    da_hdfsSetReplication hdfsSetReplication;
    da_hdfsListDirectory hdfsListDirectory;
    da_hdfsGetPathInfo hdfsGetPathInfo;
    da_hdfsFreeFileInfo hdfsFreeFileInfo;
    //da_hdfsFileIsEncrypted hdfsFileIsEncrypted;
    da_hdfsGetHosts hdfsGetHosts;
    da_hdfsFreeHosts hdfsFreeHosts;
    da_hdfsGetDefaultBlockSize hdfsGetDefaultBlockSize;
    da_hdfsGetDefaultBlockSizeAtPath hdfsGetDefaultBlockSizeAtPath;
    da_hdfsGetCapacity hdfsGetCapacity;
    da_hdfsGetUsed hdfsGetUsed;
    da_hdfsChown hdfsChown;
    da_hdfsChmod hdfsChmod;
    //da_hdfsUptime hdfsUptime;
    da_hadoopRzOptionsAlloc hadoopRzOptionsAlloc;
    da_hadoopRzOptionsSetSkipChecksum hadoopRzOptionsSetSkipChecksum;
    da_hadoopRzOptionsSetByteBufferPool hadoopRzOptionsSetByteBufferPool;
    da_hadoopRzOptionsFree hadoopRzOptionsFree;
    da_hadoopReadZero hadoopReadZero;
    da_hadoopRzBufferLength hadoopRzBufferLength;
    da_hadoopRzBufferGet hadoopRzBufferGet;
    da_hadoopRzBufferFree hadoopRzBufferFree;
}
