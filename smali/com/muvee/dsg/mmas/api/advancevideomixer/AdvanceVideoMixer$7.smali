.class Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$7;
.super Ljava/lang/Object;
.source "AdvanceVideoMixer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->stopRecording(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$7;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$7;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->c(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->stopRecording()V

    .line 382
    const-string v0, "AdvanceVideoMixer.CURRENT_TIME"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$7;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->d(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    .line 384
    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$7;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-virtual {v2, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->removeFromOutput(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)V

    .line 385
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->stop(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$7;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->e(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;

    .line 389
    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->stop()V

    goto :goto_1

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$7;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->g(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$7;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-static {v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->f(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->destroySurface(Ljava/lang/Object;)V

    .line 393
    return-void
.end method
