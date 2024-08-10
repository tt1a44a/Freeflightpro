.class public Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;
.super Ljava/lang/Object;
.source "CheapSoundFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;,
        Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;
    }
.end annotation


# static fields
.field private static final HEX_CHARS:[C

.field static sExtensionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;",
            ">;"
        }
    .end annotation
.end field

.field static sSubclassFactories:[Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;

.field static sSupportedExtensions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mInputFile:Ljava/io/File;

.field protected mProgressListener:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 55
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;

    .line 56
    invoke-static {}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->getFactory()Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x1

    .line 57
    invoke-static {}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->getFactory()Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 58
    invoke-static {}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->getFactory()Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    .line 59
    invoke-static {}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->getFactory()Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;

    move-result-object v5

    aput-object v5, v2, v4

    sput-object v2, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->sSubclassFactories:[Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->sSupportedExtensions:Ljava/util/ArrayList;

    .line 63
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->sExtensionMap:Ljava/util/HashMap;

    .line 67
    sget-object v5, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->sSubclassFactories:[Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;

    array-length v6, v5

    move v4, v3

    .local v1, "f":Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v5, v4

    .line 68
    invoke-interface {v1}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;->getSupportedExtensions()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_0

    aget-object v0, v7, v2

    .line 69
    .local v0, "extension":Ljava/lang/String;
    sget-object v9, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->sSupportedExtensions:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v9, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->sExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    .end local v0    # "extension":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 179
    :cond_1
    const/16 v2, 0x10

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->HEX_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->mProgressListener:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;

    .line 122
    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->mInputFile:Ljava/io/File;

    .line 125
    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "hash"    # [B

    .prologue
    .line 183
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [C

    .line 184
    .local v0, "buf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 185
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "x":I
    .local v3, "x":I
    sget-object v4, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->HEX_CHARS:[C

    aget-byte v5, p0, v1

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 186
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "x":I
    .restart local v2    # "x":I
    sget-object v4, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->HEX_CHARS:[C

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method public static create(Ljava/lang/String;Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;)Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "progressListener"    # Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 85
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 87
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "name":Ljava/lang/String;
    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "components":[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 101
    :cond_1
    :goto_0
    return-object v4

    .line 94
    :cond_2
    sget-object v5, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->sExtensionMap:Ljava/util/HashMap;

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;

    .line 95
    .local v2, "factory":Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;
    if-eqz v2, :cond_1

    .line 98
    invoke-interface {v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;->create()Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;

    move-result-object v4

    .line 99
    .local v4, "soundFile":Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;
    invoke-virtual {v4, p1}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->setProgressListener(Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;)V

    .line 100
    invoke-virtual {v4, v1}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->ReadFile(Ljava/io/File;)V

    goto :goto_0
.end method

.method public static getSupportedExtensions()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->sSupportedExtensions:Ljava/util/ArrayList;

    sget-object v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->sSupportedExtensions:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static isFilenameSupported(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "components":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 107
    const/4 v1, 0x0

    .line 109
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->sExtensionMap:Ljava/util/HashMap;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public ReadFile(Ljava/io/File;)V
    .locals 0
    .param p1, "inputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->mInputFile:Ljava/io/File;

    .line 131
    return-void
.end method

.method public WriteFile(Ljava/io/File;II)V
    .locals 0
    .param p1, "outputFile"    # Ljava/io/File;
    .param p2, "startFrame"    # I
    .param p3, "numFrames"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    return-void
.end method

.method public getAvgBitrateKbps()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getChannels()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getFileSizeBytes()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public getFiletype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "Unknown"

    return-object v0
.end method

.method public getFrameGains()[I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumFrames()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getSamplesPerFrame()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getSeekableFrameOffset(I)I
    .locals 1
    .param p1, "frame"    # I

    .prologue
    .line 176
    const/4 v0, -0x1

    return v0
.end method

.method public setProgressListener(Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;)V
    .locals 0
    .param p1, "progressListener"    # Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->mProgressListener:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;

    .line 135
    return-void
.end method
