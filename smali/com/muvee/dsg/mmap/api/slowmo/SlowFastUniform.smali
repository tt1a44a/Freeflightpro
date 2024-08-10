.class public Lcom/muvee/dsg/mmap/api/slowmo/SlowFastUniform;
.super Ljava/lang/Object;
.source "SlowFastUniform.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCancel()I
.end method

.method private native nativeInit(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native nativeSave(Lcom/muvee/dsg/mmap/api/slowmo/OnProgressUpdateListener;)I
.end method

.method private native nativeUnInit()I
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/slowmo/SlowFastUniform;->nativeCancel()I

    .line 50
    return-void
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/slowmo/SlowFastUniform;->nativeInit(Ljava/lang/String;Ljava/lang/String;I)I

    .line 26
    return-void
.end method

.method public save(Lcom/muvee/dsg/mmap/api/slowmo/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/slowmo/SlowFastUniform;->nativeSave(Lcom/muvee/dsg/mmap/api/slowmo/OnProgressUpdateListener;)I

    .line 43
    return-void
.end method

.method public unInit()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/slowmo/SlowFastUniform;->nativeUnInit()I

    .line 33
    return-void
.end method
