.class final Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV$1;
.super Ljava/lang/Object;
.source "CheapWAV.java"

# interfaces
.implements Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;->getFactory()Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;

    invoke-direct {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapWAV;-><init>()V

    return-object v0
.end method

.method public getSupportedExtensions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wav"

    aput-object v2, v0, v1

    return-object v0
.end method