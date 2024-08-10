.class public Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;
.super Ljava/lang/Object;
.source "MusicAnalyzer.java"


# instance fields
.field a:[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    return-void
.end method


# virtual methods
.method public analyseMusic()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;->nativeGetAnalysisData([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)I

    .line 29
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;->nativeClose()I

    .line 19
    return-void
.end method

.method public getBarDuration()F
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;->nativeGetBarDuration()F

    move-result v0

    return v0
.end method

.method public getDownBeatTimings()[F
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;->nativeGetDownBeatsListSize()I

    move-result v0

    .line 34
    new-array v1, v0, [F

    .line 36
    mul-int/lit8 v0, v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 37
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;->nativeGetDownBeatTimings(Ljava/nio/ByteBuffer;)I

    .line 40
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 45
    return-object v1
.end method

.method native nativeClose()I
.end method

.method native nativeGetAnalysisData([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)I
.end method

.method native nativeGetBarDuration()F
.end method

.method native nativeGetDownBeatTimings(Ljava/nio/ByteBuffer;)I
.end method

.method native nativeGetDownBeatsListSize()I
.end method

.method public setMusic([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/musicanalayzer/MusicAnalyzer;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    .line 24
    return-void
.end method
