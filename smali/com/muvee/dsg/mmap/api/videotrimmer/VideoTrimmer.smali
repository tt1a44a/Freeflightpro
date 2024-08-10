.class public Lcom/muvee/dsg/mmap/api/videotrimmer/VideoTrimmer;
.super Ljava/lang/Object;
.source "VideoTrimmer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCancel()V
.end method

.method private native nativeInit(Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;)I
.end method

.method private native nativeSave(Lcom/muvee/dsg/mmap/api/videotrimmer/OnProgressUpdateListener;)V
.end method

.method private native nativeUnInit()I
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videotrimmer/VideoTrimmer;->nativeCancel()V

    .line 130
    return-void
.end method

.method public init(Lcom/muvee/dsg/mmap/api/videotrimmer/TrimParams;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 66
    new-instance v2, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;-><init>()V

    .line 67
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimParams;->outputFile:Ljava/lang/String;

    iput-object v0, v2, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;->outputFile:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimParams;->video:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimVideoParams;

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;-><init>()V

    iput-object v0, v2, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;->video:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;

    .line 71
    iget-object v0, v2, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;->video:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimParams;->video:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimVideoParams;

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimVideoParams;->file:Ljava/lang/String;

    iput-object v3, v0, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;->file:Ljava/lang/String;

    .line 72
    iget-object v0, v2, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;->video:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimParams;->video:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimVideoParams;

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimVideoParams;->startTime:[I

    array-length v3, v3

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;

    iput-object v3, v0, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;->intervals:[Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;

    move v0, v1

    .line 73
    :goto_0
    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimParams;->video:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimVideoParams;

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimVideoParams;->startTime:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 74
    iget-object v3, v2, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;->video:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;->intervals:[Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;

    new-instance v4, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;-><init>()V

    aput-object v4, v3, v0

    .line 75
    iget-object v3, v2, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;->video:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;->intervals:[Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;

    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimParams;->video:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimVideoParams;

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimVideoParams;->startTime:[I

    aget v4, v4, v0

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;->startTime:I

    .line 76
    iget-object v3, v2, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;->video:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;->intervals:[Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;

    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimParams;->video:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimVideoParams;

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimVideoParams;->endTime:[I

    aget v4, v4, v0

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;->endTime:I

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimParams;->audio:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimAudioParams;

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;-><init>()V

    iput-object v0, v2, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;->audio:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;

    .line 82
    iget-object v0, v2, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;->audio:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;

    iput-object v3, v0, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;->intervals:[Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;

    .line 83
    iget-object v0, v2, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;->audio:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;->intervals:[Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;-><init>()V

    aput-object v3, v0, v1

    .line 84
    iget-object v0, v2, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;->audio:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;->intervals:[Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;

    aget-object v0, v0, v1

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimParams;->audio:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimAudioParams;

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimAudioParams;->startTime:I

    iput v3, v0, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;->startTime:I

    .line 85
    iget-object v0, v2, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;->audio:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimClipParam;->intervals:[Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;

    aget-object v0, v0, v1

    iget-object v1, p1, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimParams;->audio:Lcom/muvee/dsg/mmap/api/videotrimmer/TrimAudioParams;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimAudioParams;->endTime:I

    iput v1, v0, Lcom/muvee/dsg/mmap/api/videotrimmer/TrimInterval;->endTime:I

    .line 87
    :cond_1
    invoke-virtual {p0, v2}, Lcom/muvee/dsg/mmap/api/videotrimmer/VideoTrimmer;->init(Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;)V

    .line 88
    return-void
.end method

.method public init(Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videotrimmer/VideoTrimmer;->nativeInit(Lcom/muvee/dsg/mmap/api/videotrimmer/TrimmerParam;)I

    .line 98
    return-void
.end method

.method public save(Lcom/muvee/dsg/mmap/api/videotrimmer/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videotrimmer/VideoTrimmer;->nativeSave(Lcom/muvee/dsg/mmap/api/videotrimmer/OnProgressUpdateListener;)V

    .line 121
    return-void
.end method

.method public unInit()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videotrimmer/VideoTrimmer;->nativeUnInit()I

    .line 108
    return-void
.end method
