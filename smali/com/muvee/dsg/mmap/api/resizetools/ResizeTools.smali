.class public Lcom/muvee/dsg/mmap/api/resizetools/ResizeTools;
.super Ljava/lang/Object;
.source "ResizeTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeResize(Lcom/muvee/dsg/mmap/api/resizetools/ResizeFrameParam;Lcom/muvee/dsg/mmap/api/resizetools/ResizeFrameParam;)I
.end method

.method public static resize(Lcom/muvee/dsg/mmap/api/resizetools/ResizeFrameParam;Lcom/muvee/dsg/mmap/api/resizetools/ResizeFrameParam;)V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0, p1}, Lcom/muvee/dsg/mmap/api/resizetools/ResizeTools;->nativeResize(Lcom/muvee/dsg/mmap/api/resizetools/ResizeFrameParam;Lcom/muvee/dsg/mmap/api/resizetools/ResizeFrameParam;)I

    .line 14
    return-void
.end method
