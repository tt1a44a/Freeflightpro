.class public Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoiner;
.super Ljava/lang/Object;
.source "TrimJoiner.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput v0, Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoiner;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCancel()I
.end method

.method private native nativeInit([Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoinerMediaDetails;Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoinerMusicDetails;Ljava/lang/String;)I
.end method

.method private native nativeSave(Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoinerOnProgressUpdateListener;)I
.end method

.method private native nativeUnInit()I
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoiner;->nativeCancel()I

    move-result v0

    .line 44
    sget v1, Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoiner;->a:I

    if-eq v0, v1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "int native failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    return-void
.end method

.method public init([Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoinerMediaDetails;Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoinerMusicDetails;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoiner;->nativeInit([Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoinerMediaDetails;Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoinerMusicDetails;Ljava/lang/String;)I

    move-result v0

    .line 17
    sget v1, Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoiner;->a:I

    if-eq v0, v1, :cond_0

    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "int native failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    return-void
.end method

.method public save(Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoinerOnProgressUpdateListener;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoiner;->nativeSave(Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoinerOnProgressUpdateListener;)I

    move-result v0

    .line 35
    sget v1, Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoiner;->a:I

    if-eq v0, v1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "int native failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoiner;->nativeUnInit()I

    move-result v0

    .line 25
    sget v1, Lcom/muvee/dsg/mmap/api/trimjoin/TrimJoiner;->a:I

    if-eq v0, v1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "int native failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    return-void
.end method
