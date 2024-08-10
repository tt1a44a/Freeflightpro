.class public Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam;
.super Ljava/lang/Object;
.source "ColorConverterFrameParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;
    }
.end annotation


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public colorFormat:Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

.field public height:I

.field public strideHeight:I

.field public strideWidth:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
