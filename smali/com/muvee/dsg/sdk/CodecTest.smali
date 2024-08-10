.class public Lcom/muvee/dsg/sdk/CodecTest;
.super Ljava/lang/Object;
.source "CodecTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native ConvertAudio()I
.end method

.method private native ConvertVideo()I
.end method

.method private native DestroyAudioConverter()I
.end method

.method private native DestroyVideoConverter()I
.end method

.method private native InitAudioConverter()I
.end method

.method private native InitVideoConverter()I
.end method

.method private native PrepareAudioConverter()I
.end method

.method private native PrepareVideoConverter()I
.end method

.method private native UnInitAudioConverter()I
.end method

.method private native UnInitVideoConverter()I
.end method


# virtual methods
.method public native TestAudioDecoder()I
.end method

.method public native TestAudioEncoder()I
.end method

.method public native TestImageDecoder()I
.end method

.method public native TestMediaReader()I
.end method

.method public native TestMediaSaver()I
.end method

.method public TestTargetSizeAudio()I
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/muvee/dsg/sdk/CodecTest;->PrepareAudioConverter()I

    .line 16
    invoke-direct {p0}, Lcom/muvee/dsg/sdk/CodecTest;->InitAudioConverter()I

    .line 17
    invoke-direct {p0}, Lcom/muvee/dsg/sdk/CodecTest;->ConvertAudio()I

    .line 18
    invoke-direct {p0}, Lcom/muvee/dsg/sdk/CodecTest;->UnInitAudioConverter()I

    .line 19
    invoke-direct {p0}, Lcom/muvee/dsg/sdk/CodecTest;->DestroyAudioConverter()I

    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public TestTargetSizeVideo()I
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/muvee/dsg/sdk/CodecTest;->PrepareVideoConverter()I

    .line 25
    invoke-direct {p0}, Lcom/muvee/dsg/sdk/CodecTest;->InitVideoConverter()I

    .line 26
    invoke-direct {p0}, Lcom/muvee/dsg/sdk/CodecTest;->ConvertVideo()I

    .line 27
    invoke-direct {p0}, Lcom/muvee/dsg/sdk/CodecTest;->UnInitVideoConverter()I

    .line 28
    invoke-direct {p0}, Lcom/muvee/dsg/sdk/CodecTest;->DestroyVideoConverter()I

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public native TestThumbEngine()I
.end method
