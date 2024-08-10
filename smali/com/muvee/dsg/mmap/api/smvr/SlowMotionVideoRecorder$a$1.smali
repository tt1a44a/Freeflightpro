.class Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a$1;
.super Landroid/os/Handler;
.source "SlowMotionVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 119
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v1, "::handleMessage: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->b(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;

    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;

    invoke-static {v1, v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;)V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)V

    goto :goto_0

    .line 136
    :pswitch_3
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->d(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)V

    goto :goto_0

    .line 139
    :pswitch_4
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;

    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/muvee/dsg/mmap/api/smvr/a;

    invoke-static {v1, v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;Lcom/muvee/dsg/mmap/api/smvr/a;)V

    goto :goto_0

    .line 142
    :pswitch_5
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)V

    goto :goto_0

    .line 145
    :pswitch_6
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a$1;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->a:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->f(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)V

    goto :goto_0

    .line 148
    :pswitch_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
