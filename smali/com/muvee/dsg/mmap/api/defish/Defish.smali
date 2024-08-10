.class public Lcom/muvee/dsg/mmap/api/defish/Defish;
.super Ljava/lang/Object;
.source "Defish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCancel()I
.end method

.method private native nativeGetFrame(Lcom/muvee/dsg/mmap/api/defish/DefishGetFrameParams;)I
.end method

.method private native nativeInit(Ljava/lang/String;Ljava/lang/String;Lcom/muvee/dsg/mmap/api/defish/DefishParams;Lcom/muvee/dsg/mmap/api/defish/TimeIntervalParams;)I
.end method

.method private native nativeSave(Lcom/muvee/dsg/mmap/api/defish/OnProgressUpdateListener;)I
.end method

.method private native nativeUnInit()I
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/defish/Defish;->nativeCancel()I

    .line 70
    return-void
.end method

.method public getFrame(Lcom/muvee/dsg/mmap/api/defish/DefishGetFrameParams;)I
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/defish/Defish;->nativeGetFrame(Lcom/muvee/dsg/mmap/api/defish/DefishGetFrameParams;)I

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Lcom/muvee/dsg/mmap/api/defish/DefishParams;Lcom/muvee/dsg/mmap/api/defish/TimeIntervalParams;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/muvee/dsg/mmap/api/defish/Defish;->nativeInit(Ljava/lang/String;Ljava/lang/String;Lcom/muvee/dsg/mmap/api/defish/DefishParams;Lcom/muvee/dsg/mmap/api/defish/TimeIntervalParams;)I

    .line 34
    return-void
.end method

.method public save(Lcom/muvee/dsg/mmap/api/defish/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/defish/Defish;->nativeSave(Lcom/muvee/dsg/mmap/api/defish/OnProgressUpdateListener;)I

    .line 63
    return-void
.end method

.method public unInit()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/defish/Defish;->nativeUnInit()I

    .line 41
    return-void
.end method
