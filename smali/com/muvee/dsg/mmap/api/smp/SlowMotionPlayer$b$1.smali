.class Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;
.super Landroid/os/Handler;
.source "SlowMotionPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    :pswitch_0
    return-void

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->a()V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->b(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V

    goto :goto_0

    .line 140
    :pswitch_3
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::handleMessage:seekInput++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->c(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V

    .line 142
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::handleMessage:seekInput--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :pswitch_4
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::handleMessage:seekOutput++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->d(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V

    .line 147
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::handleMessage:seekOutput--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :pswitch_5
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::handleMessage:playInput++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->e(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V

    .line 152
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::handleMessage:playInput--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :pswitch_6
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::handleMessage:playOutput++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->f(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V

    .line 157
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::handleMessage:playOutput--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :pswitch_7
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::handleMessage:playAudioInput++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->g(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_1
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::handleMessage:playAudioInput--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 169
    :pswitch_8
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::handleMessage:playAudioOutput++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->h(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :goto_2
    const-string v0, "com.example.realtimeslowmopost.SlowMotionPlayer"

    const-string v1, "::handleMessage:playAudioOutput--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    :catch_1
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 178
    :pswitch_9
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;

    invoke-static {v1, v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->a(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;)V

    goto/16 :goto_0

    .line 181
    :pswitch_a
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->i(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V

    goto/16 :goto_0

    .line 184
    :pswitch_b
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;

    invoke-static {v1, v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->b(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;)V

    goto/16 :goto_0

    .line 187
    :pswitch_c
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->j(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;)V

    goto/16 :goto_0

    .line 190
    :pswitch_d
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b$1;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;

    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$b;->a:Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;

    invoke-static {v1, v0}, Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;->c(Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer;Lcom/muvee/dsg/mmap/api/smp/SlowMotionPlayer$a;)V

    goto/16 :goto_0

    .line 193
    :pswitch_e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
