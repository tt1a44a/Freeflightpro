.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$5;
.super Ljava/lang/Object;
.source "VmVideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->stopRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$5;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$5;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$5;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-static {v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->destroySurface(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$5;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-static {v0, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;Landroid/view/Surface;)Landroid/view/Surface;

    .line 164
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$5;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->makeCurrent()V

    .line 165
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$5;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->g(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 166
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$5;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;

    invoke-virtual {v0, v3, v2, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->addAudioFrame([BII)V

    .line 167
    return-void
.end method
