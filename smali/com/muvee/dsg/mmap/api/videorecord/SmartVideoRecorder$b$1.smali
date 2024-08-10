.class Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b$1;
.super Landroid/os/Handler;
.source "SmartVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 211
    :goto_0
    :pswitch_0
    return-void

    .line 174
    :pswitch_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->b(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->c(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V

    goto :goto_0

    .line 186
    :pswitch_3
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->d(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V

    goto :goto_0

    .line 189
    :pswitch_4
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->e(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V

    goto :goto_0

    .line 192
    :pswitch_5
    const-string v0, "com.example.realtimeslowmotexture.SmartVideoRecorder"

    const-string v1, "::handleMessage: index=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    invoke-static {v4}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 196
    :pswitch_6
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->f(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V

    goto :goto_0

    .line 199
    :pswitch_7
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->g(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V

    goto :goto_0

    .line 202
    :pswitch_8
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V

    goto :goto_0

    .line 205
    :pswitch_9
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V

    goto :goto_0

    .line 208
    :pswitch_a
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b$1;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->a:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;

    invoke-static {v1, v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
