.class Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1$1;
.super Ljava/lang/Object;
.source "MxVideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;->a([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V

    .line 396
    return-void
.end method
