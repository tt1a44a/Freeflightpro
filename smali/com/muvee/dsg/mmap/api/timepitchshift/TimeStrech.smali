.class public Lcom/muvee/dsg/mmap/api/timepitchshift/TimeStrech;
.super Ljava/lang/Object;
.source "TimeStrech.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeGetData()Ljava/nio/ByteBuffer;
.end method

.method private native nativeInit(IIIIDD)I
.end method

.method private native nativePutData(Ljava/nio/ByteBuffer;I)I
.end method

.method private native nativeUninit()I
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/timepitchshift/TimeStrech;->nativeGetData()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/muvee/dsg/mmap/api/timepitchshift/TimeStrechInitParams;)I
    .locals 10

    .prologue
    .line 13
    iget v2, p1, Lcom/muvee/dsg/mmap/api/timepitchshift/TimeStrechInitParams;->sampleRate:I

    iget v3, p1, Lcom/muvee/dsg/mmap/api/timepitchshift/TimeStrechInitParams;->channels:I

    const v4, 0x200001

    iget v5, p1, Lcom/muvee/dsg/mmap/api/timepitchshift/TimeStrechInitParams;->sampleDuration:I

    iget-wide v6, p1, Lcom/muvee/dsg/mmap/api/timepitchshift/TimeStrechInitParams;->timeshiftratio:D

    iget-wide v8, p1, Lcom/muvee/dsg/mmap/api/timepitchshift/TimeStrechInitParams;->pitchshiftratio:D

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/muvee/dsg/mmap/api/timepitchshift/TimeStrech;->nativeInit(IIIIDD)I

    move-result v0

    return v0
.end method

.method public putData(Ljava/nio/ByteBuffer;Z)I
    .locals 1

    .prologue
    .line 17
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/muvee/dsg/mmap/api/timepitchshift/TimeStrech;->nativePutData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uninit()I
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/timepitchshift/TimeStrech;->nativeUninit()I

    move-result v0

    return v0
.end method
