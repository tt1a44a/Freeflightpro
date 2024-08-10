.class public Lcom/muvee/dsg/mmap/api/audiotools/AudioTools;
.super Ljava/lang/Object;
.source "AudioTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeConvertAudio(Ljava/lang/String;Ljava/lang/String;IILcom/muvee/dsg/mmap/api/audiotools/OnProgressUpdateListener;)I
.end method

.method private native nativeCropAudio(Ljava/lang/String;Ljava/lang/String;IILcom/muvee/dsg/mmap/api/audiotools/OnProgressUpdateListener;)I
.end method

.method private native nativeExtractAudio(Ljava/lang/String;Ljava/lang/String;Lcom/muvee/dsg/mmap/api/audiotools/OnProgressUpdateListener;)I
.end method


# virtual methods
.method public convertAudio(Ljava/lang/String;Ljava/lang/String;IILcom/muvee/dsg/mmap/api/audiotools/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/muvee/dsg/mmap/api/audiotools/AudioTools;->nativeConvertAudio(Ljava/lang/String;Ljava/lang/String;IILcom/muvee/dsg/mmap/api/audiotools/OnProgressUpdateListener;)I

    .line 55
    return-void
.end method

.method public cropAudio(Ljava/lang/String;Ljava/lang/String;IILcom/muvee/dsg/mmap/api/audiotools/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct/range {p0 .. p5}, Lcom/muvee/dsg/mmap/api/audiotools/AudioTools;->nativeCropAudio(Ljava/lang/String;Ljava/lang/String;IILcom/muvee/dsg/mmap/api/audiotools/OnProgressUpdateListener;)I

    .line 96
    return-void
.end method

.method public extractAudio(Ljava/lang/String;Ljava/lang/String;Lcom/muvee/dsg/mmap/api/audiotools/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/audiotools/AudioTools;->nativeExtractAudio(Ljava/lang/String;Ljava/lang/String;Lcom/muvee/dsg/mmap/api/audiotools/OnProgressUpdateListener;)I

    .line 145
    return-void
.end method
