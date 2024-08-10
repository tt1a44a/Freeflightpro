.class public Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixerApp;
.super Ljava/lang/Object;
.source "AudioMixerApp.java"


# static fields
.field public static final MV_BAD_DATA_ERROR:I = 0xb

.field public static final MV_CANCEL:I = 0x2

.field public static final MV_EOF:I = 0x6

.field public static final MV_ERROR:I = 0x1

.field public static final MV_FILE_IO_ERROR:I = 0xa

.field public static final MV_MEMORY_FAIL:I = 0x7

.field public static final MV_NOT_ENOUGH_DATA:I = 0x8

.field public static final MV_NOT_FOUND:I = 0xd

.field public static final MV_OK:I = 0x0

.field public static final MV_OVERFLOW:I = 0x4

.field public static final MV_PAUSED:I = 0xc

.field public static final MV_TIMEOUT:I = 0x3

.field public static final MV_UNDERFLOW:I = 0x5

.field public static final MV_UNSUPPORTED:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCancel()I
.end method

.method private native nativeInit(Ljava/lang/String;)I
.end method

.method private native nativeSave(Lcom/muvee/dsg/mmap/api/audiomixer/OnProgressUpdateListener;)I
.end method

.method private native nativeSetAudioSourceList([Lcom/muvee/dsg/mmap/api/audiomixer/AudioSource;Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;)I
.end method

.method private native nativeUninit()I
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixerApp;->nativeCancel()I

    .line 49
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixerApp;->nativeUninit()I

    .line 42
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixerApp;->nativeInit(Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public save(Lcom/muvee/dsg/mmap/api/audiomixer/OnProgressUpdateListener;)I
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixerApp;->nativeSave(Lcom/muvee/dsg/mmap/api/audiomixer/OnProgressUpdateListener;)I

    move-result v0

    return v0
.end method

.method public setAudioSourceList([Lcom/muvee/dsg/mmap/api/audiomixer/AudioSource;Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixerApp;->nativeSetAudioSourceList([Lcom/muvee/dsg/mmap/api/audiomixer/AudioSource;Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;)I

    .line 62
    return-void
.end method
