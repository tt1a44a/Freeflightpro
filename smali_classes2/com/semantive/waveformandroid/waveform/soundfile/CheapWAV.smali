.class public Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;
.super Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;
.source "CheapWAV.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CheapWAV"


# instance fields
.field private mChannels:I

.field private mFileSize:I

.field private mFrameGains:[I

.field private mNumFrames:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;-><init>()V

    .line 51
    return-void
.end method

.method public static getFactory()Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV$1;

    invoke-direct {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public ReadFile(Ljava/io/File;)V
    .locals 14
    .param p1, "inputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->ReadFile(Ljava/io/File;)V

    .line 87
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mInputFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mFileSize:I

    .line 89
    iget v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mFileSize:I

    const/16 v9, 0x80

    if-ge v8, v9, :cond_0

    .line 90
    new-instance v8, Ljava/io/IOException;

    const-string v9, "File too small to parse"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 93
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->openWavFile(Ljava/io/File;)Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;

    move-result-object v7

    .line 94
    .local v7, "wavFile":Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;
    invoke-virtual {v7}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->getNumFrames()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->getSamplesPerFrame()I

    move-result v10

    int-to-long v10, v10

    div-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mNumFrames:I

    .line 95
    iget v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mNumFrames:I

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mFrameGains:[I

    .line 96
    invoke-virtual {v7}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->getSampleRate()J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mSampleRate:I

    .line 97
    invoke-virtual {v7}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->getNumChannels()I

    move-result v8

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mChannels:I

    .line 100
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->getSamplesPerFrame()I

    move-result v8

    new-array v0, v8, [I

    .line 101
    .local v0, "buffer":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mNumFrames:I

    if-ge v3, v8, :cond_3

    .line 102
    const/4 v2, -0x1

    .line 103
    .local v2, "gain":I
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->getSamplesPerFrame()I

    move-result v8

    invoke-virtual {v7, v0, v8}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->readFrames([II)I

    .line 104
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->getSamplesPerFrame()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 105
    aget v6, v0, v4

    .line 106
    .local v6, "value":I
    if-ge v2, v6, :cond_1

    .line 107
    move v2, v6

    .line 104
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    .end local v6    # "value":I
    :cond_2
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mFrameGains:[I

    int-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v9, v10

    aput v9, v8, v3

    .line 111
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mProgressListener:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;

    if-eqz v8, :cond_5

    .line 112
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mProgressListener:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;

    int-to-double v10, v3

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    iget-object v9, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mFrameGains:[I

    array-length v9, v9

    int-to-double v12, v9

    div-double/2addr v10, v12

    invoke-interface {v8, v10, v11}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;->reportProgress(D)Z

    move-result v5

    .line 113
    .local v5, "keepGoing":Z
    if-nez v5, :cond_5

    .line 118
    .end local v2    # "gain":I
    .end local v4    # "j":I
    .end local v5    # "keepGoing":Z
    :cond_3
    if-eqz v7, :cond_4

    .line 119
    invoke-virtual {v7}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->close()V
    :try_end_0
    .catch Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "buffer":[I
    .end local v3    # "i":I
    .end local v7    # "wavFile":Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;
    :cond_4
    :goto_2
    return-void

    .line 101
    .restart local v0    # "buffer":[I
    .restart local v2    # "gain":I
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v7    # "wavFile":Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "buffer":[I
    .end local v2    # "gain":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v7    # "wavFile":Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;
    const-string v8, "CheapWAV"

    const-string v9, "Exception while reading wav file"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getAvgBitrateKbps()I
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mSampleRate:I

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mChannels:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit16 v0, v0, 0x400

    return v0
.end method

.method public getChannels()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mChannels:I

    return v0
.end method

.method public getFileSizeBytes()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mFileSize:I

    return v0
.end method

.method public getFiletype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "WAV"

    return-object v0
.end method

.method public getFrameGains()[I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mFrameGains:[I

    return-object v0
.end method

.method public getNumFrames()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mNumFrames:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->mSampleRate:I

    return v0
.end method

.method public getSamplesPerFrame()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x400

    return v0
.end method
