.class public Lcom/muvee/dsg/mmap/api/compress/Decompressor;
.super Ljava/lang/Object;
.source "Decompressor.java"


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

.method private native nativeInit(Ljava/lang/String;)I
.end method

.method private native nativeUninit()I
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/compress/Decompressor;->nativeGetData()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/compress/Decompressor;->nativeInit(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public uninit()I
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/compress/Decompressor;->nativeUninit()I

    move-result v0

    return v0
.end method
