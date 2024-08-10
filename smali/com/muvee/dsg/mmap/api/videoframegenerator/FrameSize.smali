.class public abstract Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize;
.super Ljava/lang/Object;
.source "FrameSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$AbsoluteSize;,
        Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameSize$RelativeSize;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOutHeight(II)I
.end method

.method public abstract getOutWidth(II)I
.end method
