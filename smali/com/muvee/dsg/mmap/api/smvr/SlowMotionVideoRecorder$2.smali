.class Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$2;
.super Landroid/os/AsyncTask;
.source "SlowMotionVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->stopRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$2;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 666
    new-instance v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;-><init>()V

    .line 667
    const/4 v1, 0x4

    iput v1, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->b:I

    .line 668
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$2;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->addFrame(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;)V

    .line 670
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$2;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->h(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    move-result-object v0

    iget v1, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    .line 673
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$2;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->g(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$2;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;Z)Z

    .line 677
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v1, "::stopRecord:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    new-instance v0, Lcom/muvee/dsg/mmap/api/smvr/a;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/smvr/a;-><init>()V

    .line 680
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$2;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/muvee/dsg/mmap/api/smvr/a;->b:J

    .line 682
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 683
    const/16 v2, 0xe

    iput v2, v1, Landroid/os/Message;->what:I

    .line 684
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 685
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$2;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)[Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 691
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$2;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)[Landroid/os/Handler;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 692
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$2;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)[Landroid/os/Handler;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 693
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$2;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)[Landroid/os/Handler;

    move-result-object v1

    aget-object v1, v1, v0

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 691
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 662
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$2;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
