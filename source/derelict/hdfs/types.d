module derelict.hdfs.types;

import core.time : time_t;

alias hdfsFS = void*;
alias hdfsFile = void*;
alias hdfsBuilder = void*;
alias hdfsStreamBuilder = void*;
alias hadoopRzOptions = void*;
alias hadoopRzBuffer = void*;

alias tSize = int;
alias tTime = time_t;
alias tOffset = long;
alias tPort = ushort;

enum tObjectKind : char
{
    kObjectKindFile = 'F',
    kObjectKindDirectory = 'D'
}

struct hdfsReadStatistics
{
    ulong totalBytesRead;
    ulong totalLocalBytesRead;
    ulong totalShortCircuitBytesRead;
    ulong totalZeroCopyBytesRead;
}

struct hdfsFileInfo
{
    tObjectKind mKind;
    char *mName;
    tTime mLastMod;
    tOffset mSize;
    short mReplication;
    tOffset mBlockSize;
    char *mOwner;
    char *mGroup;
    short mPermissions;
    tTime mLastAccess;
}
