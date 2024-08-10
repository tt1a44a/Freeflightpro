.class public Lcom/muvee/dsg/mmap/api/videoreverser/VideoReverser;
.super Ljava/lang/Object;
.source "VideoReverser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCancelReverse()I
.end method

.method private native nativeInitReverser(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method private native nativeReverse()I
.end method

.method private native nativeUnInitReverser()I
.end method

.method private native nativeUpdateCBFn(Lcom/muvee/dsg/mmap/api/videoreverser/OnProgressUpdateListener;)I
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoreverser/VideoReverser;->nativeCancelReverse()I

    .line 60
    return-void
.end method

.method public initReverser(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/muvee/dsg/mmap/api/videoreverser/VideoReverser;->nativeInitReverser(Ljava/lang/String;Ljava/lang/String;II)I

    .line 31
    return-void
.end method

.method public reverse(Lcom/muvee/dsg/mmap/api/videoreverser/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videoreverser/VideoReverser;->nativeUpdateCBFn(Lcom/muvee/dsg/mmap/api/videoreverser/OnProgressUpdateListener;)I

    .line 55
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoreverser/VideoReverser;->nativeReverse()I

    .line 56
    return-void
.end method

.method public unInitReverser()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoreverser/VideoReverser;->nativeUnInitReverser()I

    .line 38
    return-void
.end method
