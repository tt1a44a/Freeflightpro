.class Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;
.super Ljava/lang/Object;
.source "AdvanceVideoMixer.java"

# interfaces
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->stopRecording(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;Ljava/util/List;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 400
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;->e:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    iput-object p3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 403
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->setOnCompleListener(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;)V

    .line 406
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-virtual {v0, v2, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->setEglSetup(Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;->e:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;->c:Ljava/lang/String;

    iget-wide v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer$8;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/lang/String;J)V

    .line 412
    :cond_0
    return-void
.end method
