.class public Lcom/parrot/freeflight/flightdirector/data/MusicItem;
.super Ljava/lang/Object;
.source "MusicItem.java"


# instance fields
.field private mAbsolutePath:Ljava/lang/String;

.field private mCheapSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

.field private mDuration:D

.field private mEndTime:D

.field private mName:Ljava/lang/String;

.field private mOnError:Z

.field private mStartTime:D

.field private mWaveFormImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mAbsolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCheapSoundFile()Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mCheapSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    return-object v0
.end method

.method public getDuration()D
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mDuration:D

    return-wide v0
.end method

.method public getEndTime()D
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mEndTime:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()D
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mStartTime:D

    return-wide v0
.end method

.method public getWaveFormImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mWaveFormImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isOnError()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mOnError:Z

    return v0
.end method

.method public setAbsolutePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mAbsolutePath:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setCheapSoundFile(Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;)V
    .locals 0
    .param p1, "file"    # Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mCheapSoundFile:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    .line 50
    return-void
.end method

.method public setDuration(D)V
    .locals 1
    .param p1, "duration"    # D

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mDuration:D

    .line 42
    return-void
.end method

.method public setEndTime(D)V
    .locals 1
    .param p1, "endTime"    # D

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mEndTime:D

    .line 34
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setOnError(Z)V
    .locals 0
    .param p1, "onError"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mOnError:Z

    .line 82
    return-void
.end method

.method public setStartTime(D)V
    .locals 1
    .param p1, "startTime"    # D

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mStartTime:D

    .line 26
    return-void
.end method

.method public setWaveFormImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->mWaveFormImage:Landroid/graphics/Bitmap;

    .line 58
    return-void
.end method
