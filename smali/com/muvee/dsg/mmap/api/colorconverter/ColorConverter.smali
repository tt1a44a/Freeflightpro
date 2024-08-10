.class public Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverter;
.super Ljava/lang/Object;
.source "ColorConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam;Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam;Z)V
    .locals 0

    .prologue
    .line 18
    invoke-static {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverter;->nativeConvert(Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam;Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam;Z)I

    .line 19
    return-void
.end method

.method public static getFrameSize(Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam;)I
    .locals 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverter;->nativeGetFrameSize(Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam;)I

    move-result v0

    return v0
.end method

.method private static native nativeConvert(Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam;Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam;Z)I
.end method

.method private static native nativeGetFrameSize(Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam;)I
.end method
