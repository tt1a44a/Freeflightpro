.class public Lcom/muvee/dsg/mmap/api/compress/Compressor;
.super Ljava/lang/Object;
.source "Compressor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeAddData(Ljava/nio/ByteBuffer;)I
.end method

.method private native nativeInit(Ljava/lang/String;)I
.end method

.method private native nativeUninit()I
.end method


# virtual methods
.method public addData(Ljava/nio/ByteBuffer;)I
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/compress/Compressor;->nativeAddData(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/compress/Compressor;->nativeInit(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public uninit()I
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/compress/Compressor;->nativeUninit()I

    move-result v0

    return v0
.end method
