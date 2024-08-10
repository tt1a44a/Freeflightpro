.class public Lcom/muvee/dsg/mmap/api/audiosizeconvertor/AudioSizeConvertor;
.super Ljava/lang/Object;
.source "AudioSizeConvertor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCancelConvert()I
.end method

.method private native nativeConvert(Lcom/muvee/dsg/mmap/api/audiosizeconvertor/OnProgressUpdateListener;)I
.end method

.method private native nativeInitConverter(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native nativeUnInitConverter()I
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/audiosizeconvertor/AudioSizeConvertor;->nativeCancelConvert()I

    .line 51
    return-void
.end method

.method public convert(Lcom/muvee/dsg/mmap/api/audiosizeconvertor/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/audiosizeconvertor/AudioSizeConvertor;->nativeConvert(Lcom/muvee/dsg/mmap/api/audiosizeconvertor/OnProgressUpdateListener;)I

    .line 47
    return-void
.end method

.method public initConverter(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/audiosizeconvertor/AudioSizeConvertor;->nativeInitConverter(Ljava/lang/String;Ljava/lang/String;I)I

    .line 30
    return-void
.end method

.method public unInitConverter()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/audiosizeconvertor/AudioSizeConvertor;->nativeUnInitConverter()I

    .line 37
    return-void
.end method
