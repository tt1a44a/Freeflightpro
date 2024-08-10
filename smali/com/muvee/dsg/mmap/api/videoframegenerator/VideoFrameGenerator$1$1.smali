.class Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$1;
.super Ljava/lang/Object;
.source "VideoFrameGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$1;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
