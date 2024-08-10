.class Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$7;
.super Ljava/lang/Object;
.source "MxVideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->handleOnFrameAvailable(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;)V
    .locals 0

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$7;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$7;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$7;->b:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$7;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;)V

    .line 1420
    return-void
.end method
