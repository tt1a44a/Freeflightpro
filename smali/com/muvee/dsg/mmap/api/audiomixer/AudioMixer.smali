.class public Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixer;
.super Ljava/lang/Object;
.source "AudioMixer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeClose()I
.end method

.method private native nativeGetNextAudioFrame(Lcom/muvee/dsg/mmap/api/audiomixer/GetNextAudioParam;)I
.end method

.method private native nativeInit(Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixerOutInfo;)I
.end method

.method private native nativeNeedToEncodeOutput(ZZ)I
.end method

.method private native nativeSeekToTime(Lcom/muvee/dsg/mmap/api/audiomixer/SeekParam;)I
.end method

.method private native nativeSetAudioEffectList([Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffect;)I
.end method

.method private native nativeSetAudioSourceList([Lcom/muvee/dsg/mmap/api/audiomixer/AudioSource;Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;)I
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixer;->nativeClose()I

    .line 27
    return-void
.end method

.method public getNextAudioFrame(Lcom/muvee/dsg/mmap/api/audiomixer/GetNextAudioParam;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixer;->nativeGetNextAudioFrame(Lcom/muvee/dsg/mmap/api/audiomixer/GetNextAudioParam;)I

    .line 70
    return-void
.end method

.method public init(Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixerOutInfo;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixer;->nativeInit(Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixerOutInfo;)I

    .line 19
    return-void
.end method

.method public seekToTime(Lcom/muvee/dsg/mmap/api/audiomixer/SeekParam;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixer;->nativeSeekToTime(Lcom/muvee/dsg/mmap/api/audiomixer/SeekParam;)I

    .line 84
    return-void
.end method

.method public setAudioEffectList([Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffect;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixer;->nativeSetAudioEffectList([Lcom/muvee/dsg/mmap/api/audiomixer/AudioEffect;)I

    .line 57
    return-void
.end method

.method public setAudioSourceList([Lcom/muvee/dsg/mmap/api/audiomixer/AudioSource;Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixer;->nativeSetAudioSourceList([Lcom/muvee/dsg/mmap/api/audiomixer/AudioSource;Lcom/muvee/dsg/mmap/api/audiomixer/AudioSourceType;)I

    .line 47
    return-void
.end method

.method public setEncodeOutputFrame(ZZ)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/audiomixer/AudioMixer;->nativeNeedToEncodeOutput(ZZ)I

    return-void
.end method
